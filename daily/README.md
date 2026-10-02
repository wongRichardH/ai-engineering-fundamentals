# Daily summaries

One file per day, named `YYYY-MM-DD.json` (America/Los_Angeles date). The home page loads the file matching today's date. If no file exists for today, it falls back to the plan's built-in notes.

A scheduled job writes the file for the coming day each night at about 3 AM Pacific.

## Schema

```json
{
  "date": "2026-10-05",
  "message": "One or two warm, plain sentences greeting Rich and naming today's focus.",
  "concept": "The specific concept for today (short title)",
  "summary": ["2–4 short paragraphs explaining the concept for a learner at this point in the plan"],
  "keyTerms": [{ "term": "Term", "meaning": "One-line meaning" }],
  "task": "What to do today, concrete and doable in the day's time budget",
  "resources": [{ "title": "Resource name", "url": "https://..." }],
  "tomorrow": "One line previewing tomorrow",
  "generatedAt": "ISO 8601 timestamp"
}
```

`date` must equal the file name. `summary` and `keyTerms` are required; the other arrays may be empty.
