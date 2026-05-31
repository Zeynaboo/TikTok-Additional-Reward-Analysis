# Case Study

## Title

Reverse Engineering TikTok Creator Rewards: identifying the drivers of search-based additional rewards

## Context

TikTok Creator Rewards provides limited transparency on how `Additional Reward` is triggered. For a creator, this creates a direct monetization problem: content can perform well on views while still underperforming on payout, and the platform does not clearly explain why.

This project treats TikTok Studio as a black box and investigates which content, traffic, audience, and retention variables are most associated with higher rewards.

## Goal

The objective of the project is not to "prove" how the algorithm works, but to identify practical patterns that can guide content strategy.

Core questions:

- Which metrics are associated with `Additional Reward` activation?
- Is search traffic more profitable than `For You` traffic?
- Which audience and query patterns appear most often in rewarded videos?

## Dataset

- Source: creator-owned TikTok Studio data
- Time period: creator performance collected across 2025 and 2026
- Current Power BI sample: 80 matched videos
- Coverage:
  - engagement metrics
  - reward metrics
  - search queries
  - traffic sources
  - audience demographics
  - top locations

## Workflow

1. Extract reward metrics from TikTok Studio mobile.
2. Extract post analytics from TikTok Studio desktop.
3. Automate repetitive collection steps with AutoHotkey.
4. Clean and normalize fields in Power Query.
5. Build `Video_ID` as a shared key.
6. Analyze patterns in Power BI.

## Data Model

The analysis is structured around a star schema:

- `FACT_Engagement`
- `FACT_Reward`
- `FACT_Traffic_SEO`
- `FACT_Audience`
- `DIM_Date`

This structure separates financial performance, traffic behavior, audience composition, and date filtering while preserving joinability through `Video_ID`.

## Analytical Framing

This project is exploratory. The goal is to identify strong associations and useful thresholds rather than claim causal certainty.

Examples of tested ideas:

- watch time thresholds
- completion rate effects
- search query profitability
- audience geography differences
- query and content theme clustering

## Current Findings

The current dashboard highlights several repeatable patterns:

- only a small subset of videos in the sample triggered positive `Additional Reward`
- rewarded videos tend to sit in stronger watch-time and stronger search-traffic zones than the bulk of non-rewarded videos
- top search-led videos frequently use MBTI pairing, relationship, and curiosity-driven query phrasing
- audience discovery is dominated by non-followers, which supports a search and discovery-led content strategy
- the strongest age concentration in the current dashboard is `25-34`, followed by `18-24`

At the current stage, the most stable conclusion is not that a single metric "causes" reward activation, but that search visibility plus stronger retention appears repeatedly in the rewarded subset.

## Deliverables

- a 5-page Power BI dashboard
- a cleaned analytical dataset structure
- a methodology document
- a narrative final analysis document
- business recommendations for future content strategy

## Business Value

The value of this project is practical:

- identify more profitable traffic patterns
- prioritize better-performing topics and queries
- compare rewarded vs non-rewarded content
- turn creator data into a repeatable decision-making system

## Limits

- the sample is still moderate
- some fields required manual review
- some geography and demographic detail fields remain better suited to support tables than final headline metrics
- results should be read as pattern detection, not algorithm proof
