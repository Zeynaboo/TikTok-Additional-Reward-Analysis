# TikTok Additional Reward Analysis

![Power BI](https://img.shields.io/badge/Data_Viz-Power%20BI-yellow?style=for-the-badge&logo=powerbi)
![Power Query](https://img.shields.io/badge/ETL-Power%20Query-green?style=for-the-badge)
![Python](https://img.shields.io/badge/Analysis-Python-blue?style=for-the-badge&logo=python)
![Status](https://img.shields.io/badge/Project-In%20Progress-orange?style=for-the-badge)

Reverse engineering project focused on understanding the drivers of TikTok Creator Rewards, with a specific focus on search-driven `Additional Reward`.

## Overview

TikTok Creator Rewards behaves like a black box. This project was built to answer a practical business question:

- why do some videos receive only standard monetization while others trigger additional search rewards?

Instead of using a public practice dataset, this project is based on creator-owned TikTok Studio data collected through a custom workflow combining automation, Power Query cleanup, and exploratory analysis.

## Business Questions

This analysis focuses on three main questions:

1. Which metrics are most associated with `Additional Reward` activation?
2. Is `Search` traffic more profitable than standard viral traffic such as `For You`?
3. Do audience profile, geography, and query themes correlate with better monetization?

## Scope

- Data source: proprietary TikTok Studio creator data
- Time range: January 2025 to December 2026 filter window, with creator performance concentrated between 2025 and 2026
- Current dashboard sample: 80 matched videos in the Power BI model
- Tools: AutoHotkey, Power Query, Excel, Power BI

## Repository Structure

```text
portfolio-tiktok-creator-rewards/
|-- README.md
|-- .gitignore
|-- data/
|   |-- README.md
|   |-- data-dictionary.md
|   `-- tiktok_post_analytics_schema.csv
|-- docs/
|   |-- case-study.md
|   |-- dashboard-plan.md
|   |-- final-analysis.md
|   |-- findings-template.md
|   `-- methodology.md
|-- etl/
|   |-- 01_reward_analytics.m
|   `-- 02_post_analytics_template.m
|-- scripts/
|   |-- run_tiktok_export.bat
|   |-- tiktok_etl_pdf.py
|   `-- tiktok_studio_export.ahk
|-- powerbi/
|   `-- README.md
`-- visuals/
    `-- README.md
```

## Data Model

Current Power BI model:

- `FACT_Engagement`
- `FACT_Reward`
- `FACT_Traffic_SEO`
- `FACT_Audience`
- `DIM_Date`

Shared key:

- `Video_ID`

`Video_ID` is derived from:

- normalized date
- cleaned title slug

This key is used to connect financial metrics with post-level analytics.

## Technical Workflow

1. Extract reward metrics from TikTok Studio mobile.
2. Extract detailed post analytics from TikTok Studio desktop.
3. Use AutoHotkey to automate repetitive navigation and capture.
4. Clean and normalize the data in Power Query.
5. Model the data into analysis-ready tables.
6. Analyze patterns in Power BI and supporting scripts.

## Current Dashboard Results

The current Power BI dashboard shows the following top-level results:

- `80` matched videos analyzed
- `$62.62` total reward across the tracked sample
- `$31.81` total additional reward
- `6` rewarded videos with positive `Additional Reward`
- `15.38%` average search traffic across the sample

Observed patterns in the current build:

- rewarded videos tend to appear among videos with stronger watch time and stronger search contribution
- MBTI pairing and relationship-style search terms recur frequently in top search-led videos
- non-follower reach dominates the audience mix, suggesting discovery-first performance
- the core audience skews toward ages `18-34`, with `25-34` as the largest segment in the current dashboard

These are exploratory findings, not causal proof.

## Key Strengths of the Project

- Real-world, proprietary data instead of a public training dataset
- Custom ETL workflow built from scratch
- Semi-automated collection using AutoHotkey
- Data modeling through a star schema
- Business-oriented reverse engineering approach

## Limits

- The sample remains moderate and should be treated as exploratory
- Some fields required manual cleanup or validation
- Findings indicate patterns, not causal proof
- Private raw data is not fully published in this repository

## Power BI Deliverables

The dashboard currently includes 5 pages:

1. `Overview`
2. `Reward Drivers`
3. `Search and SEO`
4. `Audience Analysis`
5. `Content Strategy`

Recommended repo additions before publishing:

- exported dashboard screenshots in `visuals/`
- optional sanitized sample dataset in `data/`
- final annotated screenshots or a short walkthrough in `powerbi/`

Recommended reading order:

1. [Case Study](./docs/case-study.md)
2. [Methodology](./docs/methodology.md)
3. [Final Analysis](./docs/final-analysis.md)
4. [Findings](./docs/findings-template.md)

## Contact

This repository is designed as a portfolio project and can be adapted into a public case study page, GitHub project, or interview walkthrough.
