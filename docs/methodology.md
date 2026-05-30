# Methodology

## 1. Collection

The project combines several collection methods because TikTok Studio does not expose the full analytical workflow in a clean export format.

### Mobile collection

Used for:

- total reward
- RPM
- additional reward status
- qualified views

### Desktop collection

Used for:

- views
- likes
- comments
- shares
- favorites
- total play time
- average watch time
- completion rate
- traffic sources
- search queries
- audience demographics
- top locations

### Automation

AutoHotkey was used to reduce repetitive manual interaction, especially for:

- navigation between videos
- tab switching
- screenshot or export workflow
- save dialog handling

## 2. Transformation

Power Query was used as the main transformation layer.

Main operations:

- split semicolon-separated imports
- promote headers
- normalize data types
- clean and standardize titles
- generate `Title_Clean`
- generate `Video_ID`
- calculate derived financial fields
- merge manual correction tables when required

## 3. Key Construction

To connect reward-level and post-level datasets, the project generates a shared key:

- `Video_ID = yyyyMMdd + "_" + Title_Clean`

This approach was necessary because the raw exports did not always share a single reliable ID field in the same format.

## 4. Modeling

Instead of keeping a single wide table, the analysis is organized as a star schema:

- `T_Engagement`
- `T_Traffic_SEO`
- `T_Audience`

This structure improves clarity, reduces redundancy, and makes analysis in Power BI easier to scale.

## 5. Validation Strategy

Because some collection steps are semi-manual, validation matters.

Validation approach:

- compare suspicious rows manually
- preserve a manual correction table where needed
- isolate derived calculations from raw capture fields
- keep the transformation logic documented

## 6. Analytical Limits

- sample size is still moderate
- some fields may require manual review
- OCR-based attempts were less reliable than structured cleanup
- conclusions should be interpreted as exploratory patterns
