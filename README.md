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
- Time range: August 2025 to May 2026
- Sample size: 82 cleaned videos
- Tools: AutoHotkey, Power Query, Excel, Power BI, Python

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

Recommended star schema:

- `T_Engagement`
- `T_Traffic_SEO`
- `T_Audience`

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

## Main Hypotheses

1. Higher average watch time is associated with a higher probability of `Additional Reward`.
2. Search-driven traffic is associated with stronger monetization than standard viral traffic.
3. Audience geography and content theme influence reward performance.

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

## What To Add Next

- dashboard screenshots in `visuals/`
- a public-safe sample dataset in `data/`
- final business findings in `docs/findings-template.md`
- optional Power BI export or walkthrough in `powerbi/`

## Contact

This repository is designed as a portfolio project and can be adapted into a public case study page, GitHub project, or interview walkthrough.
