# TikTok Creator Rewards Reverse Engineering

Portfolio project focused on reverse engineering the drivers of TikTok Creator Rewards, with a specific focus on search-driven `Additional Reward`.

## Objective

This project investigates which content, traffic, retention, and audience patterns are most associated with higher TikTok rewards.

Key questions:

- Which variables are associated with `Additional Reward` activation?
- Is search traffic more profitable than `For You` traffic?
- Which query, audience, and engagement patterns appear most often in rewarded videos?

## Project Scope

- Data source: proprietary TikTok Studio creator data
- Time range: August 2025 to May 2026
- Sample: 82 cleaned videos
- Workflow: capture, clean, model, analyze, visualize

## Repository Structure

```text
portfolio-tiktok-creator-rewards/
├── README.md
├── .gitignore
├── docs/
│   ├── case-study.md
│   └── methodology.md
├── powerbi/
│   └── README.md
├── data/
│   └── README.md
└── visuals/
    └── README.md
```

## Data Model

Recommended star schema:

- `T_Engagement`
- `T_Traffic_SEO`
- `T_Audience`

Shared key:

- `Video_ID`

## Main Hypotheses

1. Higher average watch time is associated with higher probability of `Additional Reward`.
2. Search-driven traffic is associated with stronger monetization than standard viral traffic.
3. Audience geography and viewer profile influence reward performance.

## Technical Workflow

1. Data extraction from TikTok Studio mobile and desktop
2. Semi-automated collection using AutoHotkey
3. Cleanup in Power Query
4. Modeling in Excel / Power BI
5. Exploratory analysis and dashboarding

## Notes

- This is an exploratory analysis, not a causal proof.
- The dataset is proprietary and not fully published in this repository.
- Screenshots and reports should be added in the `visuals/` and `docs/` folders.

## Next Steps

- Add dashboard screenshots
- Add findings and business recommendations
- Publish a final case-study page
