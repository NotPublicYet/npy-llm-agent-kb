# News Ingest Automation Playbook

## Scope

This playbook defines daily automation for `09_resources/news` by ingesting into `90_inbox` first.

## Schedule

- GitHub Actions workflow: `.github/workflows/news-daily.yml`
- Run time: daily at `01:00 UTC`

## Data Flow

1. `automation/news/fetch_news.ps1`
2. `automation/news/dedupe_news.ps1`
3. `automation/news/validate_news.ps1`
4. `automation/news/ingest_to_inbox.ps1`
5. `automation/news/build_report.ps1`

## Input Config

- Source whitelist: `automation/news/sources.yaml`
- Deduplication state: `automation/news/state.json`

## Generated Outputs

- Inbox entries: `90_inbox/news-YYYY-MM-DD-*.md`
- Daily report: `automation/reports/news-daily-YYYY-MM-DD.md`
- Latest summary pointer: `automation/reports/latest-news-report.json`

## Triage Policy

- All auto-created entries start as `Status: Untriaged`.
- Triage target SLA for news remains 48 hours.
- Move validated items from `90_inbox/` to `09_resources/news/`.

## Operations

Run manually:

```powershell
powershell -ExecutionPolicy Bypass -File automation/news/run_news_pipeline.ps1
```

Run local tests:

```powershell
powershell -ExecutionPolicy Bypass -File automation/news/tests/run_tests.ps1
```

## Failure Handling

- Feed failure does not stop the full run.
- Failed sources are listed in the daily report.
- Invalid items are still written for triage with `Validation Status`.
