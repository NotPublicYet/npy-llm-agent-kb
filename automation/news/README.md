# News Automation

This folder implements the standard daily news pipeline.

## Pipeline stages

1. `fetch_news.ps1`: fetch from RSS whitelist and normalize records.
2. `dedupe_news.ps1`: remove duplicates using persisted hash window.
3. `validate_news.ps1`: validate required fields and date logic.
4. `ingest_to_inbox.ps1`: render standardized markdown into `90_inbox/`.
5. `build_report.ps1`: generate daily report and 48-hour SLA risk list.

`run_news_pipeline.ps1` runs all stages in sequence.

## Run locally

```powershell
powershell -File automation/news/run_news_pipeline.ps1
```

## Inputs

- `sources.yaml`: source whitelist
- `state.json`: dedupe/idempotency state

## Outputs

- `90_inbox/news-YYYY-MM-DD-*.md`
- `automation/reports/news-daily-YYYY-MM-DD.md`
- `automation/reports/latest-news-report.json`
- `automation/reports/_tmp/*.json`

## Notes

- News is intentionally ingested into `90_inbox/` first for triage.
- Any item with uncertain fields is marked for triage, not discarded silently.
