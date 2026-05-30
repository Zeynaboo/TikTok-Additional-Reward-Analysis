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
- Time period: August 2025 to May 2026
- Sample: 82 cleaned videos
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

- `T_Engagement`
- `T_Traffic_SEO`
- `T_Audience`

This structure separates financial performance, traffic behavior, and audience composition while preserving joinability through `Video_ID`.

## Analytical Framing

This project is exploratory. The goal is to identify strong associations and useful thresholds rather than claim causal certainty.

Examples of tested ideas:

- watch time thresholds
- completion rate effects
- search query profitability
- audience geography differences
- query and content theme clustering

## Expected Deliverables

- a Power BI dashboard
- a cleaned analytical dataset
- a methodology document
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
- results should be read as pattern detection, not algorithm proof
