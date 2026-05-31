# Visual Blueprint

This file maps each page to:

- page purpose
- visual title
- visual type
- main fields / measures

## Page 1 - Overview

Background:

- `Pages UI/01_overview_1920x1080.svg`

Top KPI cards:

1. `Videos Analysed`
   - Card
   - Measure: `Total Videos`

2. `Total Reward`
   - Card
   - Measure: `Total Reward`

3. `Additional Reward`
   - Card
   - Measure: `Total Additional Reward`

4. `Rewarded Video Share`
   - Card
   - Measure: `Pct Videos with Additional Reward`

Main visual:

- `Reward Trend Over Time`
  - Line and clustered column chart
  - Axis: `Date`
  - Columns: `Total Reward`
  - Line: `Total Views`

Right visuals:

- `Reward Mix`
  - Donut chart
  - Values: `Total Standard Reward`, `Total Additional Reward`

- `Core Performance Snapshot`
  - Multi-row card
  - Measures:
    - `Avg Views`
    - `Avg Watch Time`
    - `Avg Completion Rate`
    - `Engagement Rate`

## Page 2 - Reward Drivers

Background:

- `Pages UI/02_reward_drivers_1920x1080.svg`

Left KPI cards:

1. `Avg Reward per Video`
2. `Reward per 1K Views`
3. `Qualified View Rate`

Main visuals:

- `Watch Time vs Additional Reward`
  - Scatter chart
  - X: `FACT_Traffic_SEO[Avg_Watch_Time]`
  - Y: `FACT_Reward[Additional_Reward]`
  - Size: `FACT_Engagement[Views]`
  - Legend: `FACT_Reward[Additional_Reward_Flag]`
  - Details: `FACT_Engagement[Video_ID]`

- `Completion Rate vs Additional Reward`
  - Scatter chart
  - X: `Avg Completion Rate`
  - Y: `FACT_Reward[Additional_Reward]`
  - Size: `FACT_Engagement[Views]`
  - Legend: `FACT_Reward[Additional_Reward_Flag]`
  - Details: `FACT_Engagement[Video_ID]`

Bottom visual:

- `Rewarded vs Non Rewarded Performance`
  - Clustered bar chart
  - Axis: category labels
  - Values:
    - `Avg Watch Time - Rewarded`
    - `Avg Watch Time - Non Rewarded`
    - `Avg Search % - Rewarded`
    - `Avg Search % - Non Rewarded`

## Page 3 - Search and SEO

Background:

- `Pages UI/03_search_seo_1920x1080.svg`

Top cards:

1. `Avg Search Traffic %`
2. `Search Heavy Videos`
3. `Additional Reward per 1K Views`

Main visual:

- `Top Search Queries by Reward Potential`
  - Horizontal bar chart
  - Axis: unpivoted query field
  - Values: average of `Total Reward` or `Additional_Reward`

Support visuals:

- `Search Traffic vs Total Reward`
  - Scatter
  - X: `FACT_Traffic_SEO[Source_Search]`
  - Y: `FACT_Reward[Total_Reward]`
  - Size: `FACT_Engagement[Views]`
  - Details: `FACT_Engagement[Video_ID]`

- `Top Search Query Share`
  - Treemap or bar chart
  - Category: top query
  - Values: query percentage measure formatted as percentage

- `Hashtag / Topic Notes`
  - Smart narrative or text box

## Page 4 - Audience

Background:

- `Pages UI/04_audience_1920x1080.svg`

Top cards:

1. `Avg Total Viewers`
2. `Avg New Viewers %`
3. `Avg Non Followers %`
4. `Avg Female %`

Main visuals:

- `Audience Age Profile`
  - Clustered bar chart
  - Categories:
    - `Age_18_24`
    - `Age_25_34`
    - `Age_35_44`
    - `Age_45_54`
    - `Age_55_plus`

- `Gender Distribution`
  - Donut chart
  - Values:
    - `Avg Female %`
    - `Avg Male %`
    - `Avg Other Gender %`

- `Top Countries`
  - Horizontal bar chart
  - Category: location names
  - Values: location percentages formatted as percentage

- `Rewarded vs Non Rewarded Audience Mix`
  - Clustered bar chart

## Page 5 - Content Strategy

Background:

- `Pages UI/05_content_strategy_1920x1080.svg`

Top cards:

1. `Best Avg Reward Topic`
2. `Best Search Topic`
3. `Highest Reward per 1K Views`

Main visuals:

- `Top Rewarded Content Themes`
  - Bar chart
  - Category: topic / manual content type
  - Values: `Total Reward`

- `Underperforming Themes`
  - Bar chart
  - Category: topic / manual content type
  - Values: `Reward per 1K Views`

- `Recommended Content Plays`
  - Text box with 3 to 5 bullets

## Formatting Notes

- Use a dark visual theme
- Keep chart backgrounds transparent
- Use white labels with high contrast
- Accent color 1: `#FE2C55`
- Accent color 2: `#25F4EE`
- Neutral panel fill: `#121722`
- Border color: `#273042`
- Format all percentage measures as `Percentage`
- Keep raw `%` columns on `Do not summarize`
