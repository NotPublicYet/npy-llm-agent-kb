Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Get-RepoRoot {
  param([string]$StartPath = $PSScriptRoot)
  return (Resolve-Path (Join-Path $StartPath "..\..")).Path
}

function Ensure-Directory {
  param([Parameter(Mandatory = $true)][string]$Path)
  if (-not (Test-Path -LiteralPath $Path)) {
    New-Item -ItemType Directory -Path $Path | Out-Null
  }
}

function Read-JsonFile {
  param([Parameter(Mandatory = $true)][string]$Path)
  if (-not (Test-Path -LiteralPath $Path)) { return $null }
  $raw = Get-Content -LiteralPath $Path -Raw
  if ([string]::IsNullOrWhiteSpace($raw)) { return $null }
  return $raw | ConvertFrom-Json
}

function Write-JsonFile {
  param(
    $Object,
    [Parameter(Mandatory = $true)][string]$Path
  )
  Ensure-Directory -Path (Split-Path -Parent $Path)
  $json = ConvertTo-Json -InputObject $Object -Depth 100
  if ($null -eq $json) { $json = "[]" }
  Set-Content -LiteralPath $Path -Value $json -Encoding UTF8
}


function ConvertTo-Slug {
  param([Parameter(Mandatory = $true)][string]$Text)
  $slug = $Text.ToLowerInvariant()
  $slug = [regex]::Replace($slug, "[^a-z0-9]+", "-")
  $slug = [regex]::Replace($slug, "^-+|-+$", "")
  if ([string]::IsNullOrWhiteSpace($slug)) { return "untitled" }
  if ($slug.Length -gt 60) { return $slug.Substring(0, 60).TrimEnd("-") }
  return $slug
}

function Get-Sha256 {
  param([Parameter(Mandatory = $true)][string]$Text)
  $sha = [System.Security.Cryptography.SHA256]::Create()
  try {
    $bytes = [System.Text.Encoding]::UTF8.GetBytes($Text)
    $hash = $sha.ComputeHash($bytes)
    return ([BitConverter]::ToString($hash) -replace "-", "").ToLowerInvariant()
  }
  finally {
    $sha.Dispose()
  }
}

function Normalize-Url {
  param([Parameter(Mandatory = $true)][string]$Url)
  try {
    $uri = [System.Uri]$Url
  }
  catch {
    return $null
  }

  $builder = New-Object System.UriBuilder($uri)
  if ($builder.Host) { $builder.Host = $builder.Host.ToLowerInvariant() }
  if ($builder.Scheme) { $builder.Scheme = $builder.Scheme.ToLowerInvariant() }
  if ($builder.Path) { $builder.Path = $builder.Path.TrimEnd("/") }

  if ($builder.Query) {
    $query = $builder.Query.TrimStart("?")
    $parts = @()
    foreach ($pair in $query.Split("&")) {
      if ([string]::IsNullOrWhiteSpace($pair)) { continue }
      $k = $pair.Split("=")[0].ToLowerInvariant()
      if ($k -in @("utm_source", "utm_medium", "utm_campaign", "utm_term", "utm_content", "fbclid", "gclid")) {
        continue
      }
      $parts += $pair
    }
    $builder.Query = ($parts -join "&")
  }

  return $builder.Uri.AbsoluteUri.TrimEnd("/")
}

function Parse-DateSafe {
  param([AllowNull()][string]$Text)
  if ([string]::IsNullOrWhiteSpace($Text)) { return $null }
  $dt = [datetime]::MinValue
  if ([datetime]::TryParse([string]$Text, [ref]$dt)) { return $dt }
  return $null
}


function ConvertTo-DateString {
  param([AllowNull()][datetime]$DateTime)
  if ($null -eq $DateTime) { return $null }
  return $DateTime.ToString("yyyy-MM-dd")
}

function Get-ConfidenceFromPriority {
  param([AllowNull()][string]$Priority)
  $p = ""
  if ($null -ne $Priority) { $p = [string]$Priority }
  switch ($p.ToLowerInvariant()) {
    "high" { return "High" }
    "low" { return "Low" }
    default { return "Medium" }
  }
}

function Strip-OuterQuotes {
  param([string]$Text)
  if ($null -eq $Text) { return "" }
  $v = $Text.Trim()
  if ($v.Length -ge 2) {
    if (($v.StartsWith('"') -and $v.EndsWith('"')) -or ($v.StartsWith("'") -and $v.EndsWith("'"))) {
      return $v.Substring(1, $v.Length - 2)
    }
  }
  return $v
}

function Get-PropertyValue {
  param(
    $Object,
    [Parameter(Mandatory = $true)][string]$Name
  )
  if ($null -eq $Object) { return $null }
  $prop = $Object.PSObject.Properties[$Name]
  if ($null -eq $prop) { return $null }
  return $prop.Value
}

function Get-XmlText {
  param($Node)
  if ($null -eq $Node) { return "" }

  if ($Node -is [System.Array]) {
    foreach ($n in $Node) {
      $txt = Get-XmlText -Node $n
      if (-not [string]::IsNullOrWhiteSpace($txt)) { return $txt }
    }
    return ""
  }

  if ($Node -is [System.Xml.XmlNode]) {
    return [string]$Node.InnerText
  }

  return [string]$Node
}

function Get-LinkText {
  param($LinkNode)
  if ($null -eq $LinkNode) { return "" }

  foreach ($lnk in @($LinkNode)) {
    $href = Get-PropertyValue -Object $lnk -Name "href"
    if (-not [string]::IsNullOrWhiteSpace([string]$href)) { return [string]$href }

    $inner = Get-XmlText -Node $lnk
    if (-not [string]::IsNullOrWhiteSpace($inner)) { return $inner }
  }

  return ""
}

function Read-SourcesYaml {
  param([Parameter(Mandatory = $true)][string]$Path)

  if (-not (Test-Path -LiteralPath $Path)) {
    throw "Sources file not found: $Path"
  }

  $lines = Get-Content -LiteralPath $Path
  $items = @()
  $current = $null

  foreach ($line in $lines) {
    $trim = $line.Trim()
    if ([string]::IsNullOrWhiteSpace($trim)) { continue }
    if ($trim.StartsWith("#")) { continue }
    if ($trim -eq "sources:") { continue }

    if ($trim.StartsWith("- ")) {
      if ($null -ne $current) { $items += [pscustomobject]$current }
      $current = @{}
      $trim = $trim.Substring(2).Trim()
      if ($trim -match "^([a-zA-Z0-9_]+)\s*:\s*(.+)$") {
        $k = $matches[1]
        $v = Strip-OuterQuotes -Text $matches[2]
        $current[$k] = $v
      }
      continue
    }

    if ($trim -match "^([a-zA-Z0-9_]+)\s*:\s*(.*)$") {
      if ($null -eq $current) { continue }
      $k = $matches[1]
      $v = Strip-OuterQuotes -Text $matches[2]
      if ($v -eq "true") { $current[$k] = $true; continue }
      if ($v -eq "false") { $current[$k] = $false; continue }
      $current[$k] = $v
    }
  }

  if ($null -ne $current) { $items += [pscustomobject]$current }
  return $items
}

function Convert-RssXmlToItems {
  param(
    [Parameter(Mandatory = $true)][xml]$Xml,
    [Parameter(Mandatory = $true)]$Source
  )

  $out = @()

  $rssItems = Get-PropertyValue -Object (Get-PropertyValue -Object $Xml -Name "rss") -Name "channel"
  $rssItems = Get-PropertyValue -Object $rssItems -Name "item"

  if ($null -ne $rssItems) {
    foreach ($item in @($rssItems)) {
      $title = Get-XmlText -Node (Get-PropertyValue -Object $item -Name "title")
      $link = Get-LinkText -LinkNode (Get-PropertyValue -Object $item -Name "link")

      $summary = Get-XmlText -Node (Get-PropertyValue -Object $item -Name "description")
      if ([string]::IsNullOrWhiteSpace($summary)) {
        $summary = Get-XmlText -Node (Get-PropertyValue -Object $item -Name "content")
      }
      if ([string]::IsNullOrWhiteSpace($summary)) {
        $summary = Get-XmlText -Node (Get-PropertyValue -Object $item -Name "summary")
      }

      $pub = Get-XmlText -Node (Get-PropertyValue -Object $item -Name "pubDate")
      if ([string]::IsNullOrWhiteSpace($pub)) {
        $pub = Get-XmlText -Node (Get-PropertyValue -Object $item -Name "published")
      }

      $out += [pscustomobject]@{
        source_id   = $Source.id
        source_name = $Source.name
        source_url  = $Source.rss_url
        category    = $Source.category
        priority    = $Source.priority
        title       = $title
        url         = $link
        publish_raw = $pub
        summary     = $summary
      }
    }
    return $out
  }

  $entries = Get-PropertyValue -Object (Get-PropertyValue -Object $Xml -Name "feed") -Name "entry"
  if ($null -ne $entries) {
    foreach ($entry in @($entries)) {
      $title = Get-XmlText -Node (Get-PropertyValue -Object $entry -Name "title")
      $link = Get-LinkText -LinkNode (Get-PropertyValue -Object $entry -Name "link")

      $pub = Get-XmlText -Node (Get-PropertyValue -Object $entry -Name "updated")
      if ([string]::IsNullOrWhiteSpace($pub)) {
        $pub = Get-XmlText -Node (Get-PropertyValue -Object $entry -Name "published")
      }

      $summary = Get-XmlText -Node (Get-PropertyValue -Object $entry -Name "summary")
      if ([string]::IsNullOrWhiteSpace($summary)) {
        $summary = Get-XmlText -Node (Get-PropertyValue -Object $entry -Name "content")
      }

      $out += [pscustomobject]@{
        source_id   = $Source.id
        source_name = $Source.name
        source_url  = $Source.rss_url
        category    = $Source.category
        priority    = $Source.priority
        title       = $title
        url         = $link
        publish_raw = $pub
        summary     = $summary
      }
    }
    return $out
  }

  return @()
}



