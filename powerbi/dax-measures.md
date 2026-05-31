# DAX Measures

These measures are aligned with your current model:

- `FACT_Engagement`
- `FACT_Reward`
- `FACT_Traffic_SEO`
- `FACT_Audience`
- `DIM_Date`
- optional measure table: `Measure`

Recommended: create the measures inside your `Measure` table.

## Core Reward Measures

```DAX
Total Videos =
DISTINCTCOUNT(FACT_Engagement[Video_ID])
```

```DAX
Total Reward =
SUM(FACT_Reward[Total_Reward])
```

```DAX
Total Additional Reward =
SUM(FACT_Reward[Additional_Reward])
```

```DAX
Total Standard Reward =
SUM(FACT_Reward[Standard_Reward])
```

```DAX
Avg Reward per Video =
DIVIDE([Total Reward], [Total Videos])
```

```DAX
Rewarded Videos Count =
CALCULATE(
    DISTINCTCOUNT(FACT_Reward[Video_ID]),
    FACT_Reward[Additional_Reward] > 0
)
```

```DAX
Pct Videos with Additional Reward =
DIVIDE([Rewarded Videos Count], [Total Videos])
```

Format:

- Percentage

## Performance Measures

```DAX
Total Views =
SUM(FACT_Engagement[Views])
```

```DAX
Avg Views =
AVERAGE(FACT_Engagement[Views])
```

```DAX
Total Likes =
SUM(FACT_Engagement[Likes])
```

```DAX
Avg Likes =
AVERAGE(FACT_Engagement[Likes])
```

```DAX
Total Comments =
SUM(FACT_Engagement[Comms])
```

```DAX
Avg Comments =
AVERAGE(FACT_Engagement[Comms])
```

```DAX
Total Shares =
SUM(FACT_Engagement[Shares])
```

```DAX
Avg Shares =
AVERAGE(FACT_Engagement[Shares])
```

```DAX
Total Favorites =
SUM(FACT_Engagement[Favorites])
```

```DAX
Avg Favorites =
AVERAGE(FACT_Engagement[Favorites])
```

```DAX
Engagement Rate =
DIVIDE(
    [Total Likes] + [Total Comments] + [Total Shares] + [Total Favorites],
    [Total Views]
)
```

```DAX
Avg Watch Time =
AVERAGE(FACT_Traffic_SEO[Avg_Watch_Time])
```

```DAX
Avg Completion Rate =
DIVIDE(AVERAGE(FACT_Traffic_SEO[Full_Video_%]), 100)
```

```DAX
Avg New Followers =
AVERAGE(FACT_Engagement[New_Followers])
```

## Monetization Efficiency

```DAX
Reward per 1K Views =
DIVIDE([Total Reward], [Total Views]) * 1000
```

```DAX
Additional Reward per 1K Views =
DIVIDE([Total Additional Reward], [Total Views]) * 1000
```

```DAX
Qualified Views Total =
SUM(FACT_Reward[Qualified_View])
```

```DAX
Qualified View Rate =
DIVIDE([Qualified Views Total], [Total Views])
```

## Traffic / SEO Measures

```DAX
Avg Search Traffic % =
DIVIDE(AVERAGE(FACT_Traffic_SEO[Source_Search]), 100)
```

```DAX
Avg FYP Traffic % =
DIVIDE(AVERAGE(FACT_Traffic_SEO[Source_FYP]), 100)
```

```DAX
Avg Profile Traffic % =
DIVIDE(AVERAGE(FACT_Traffic_SEO[Source_Profile]), 100)
```

```DAX
Avg Following Traffic % =
DIVIDE(AVERAGE(FACT_Traffic_SEO[Source_Following]), 100)
```

```DAX
Avg Other Traffic % =
DIVIDE(AVERAGE(FACT_Traffic_SEO[Source_Other]), 100)
```

```DAX
Avg Sound Traffic % =
DIVIDE(AVERAGE(FACT_Traffic_SEO[Source_Sound]), 100)
```

```DAX
Search Heavy Videos =
CALCULATE(
    DISTINCTCOUNT(FACT_Traffic_SEO[Video_ID]),
    FACT_Traffic_SEO[Source_Search] >= 20
)
```

## Audience Measures

```DAX
Avg Total Viewers =
AVERAGE(FACT_Audience[Total_Viewers])
```

```DAX
Avg New Viewers % =
DIVIDE(AVERAGE(FACT_Audience[New_Viewers_%]), 100)
```

```DAX
Avg Returning Viewers % =
DIVIDE(AVERAGE(FACT_Audience[Returning_Viewers_%]), 100)
```

```DAX
Avg Non Followers % =
DIVIDE(AVERAGE(FACT_Audience[Non_Followers_%]), 100)
```

```DAX
Avg Followers % =
DIVIDE(AVERAGE(FACT_Audience[Followers_%]), 100)
```

```DAX
Avg Female % =
DIVIDE(AVERAGE(FACT_Audience[Gender_Female]), 100)
```

```DAX
Avg Male % =
DIVIDE(AVERAGE(FACT_Audience[Gender_Male]), 100)
```

```DAX
Avg Other Gender % =
DIVIDE(AVERAGE(FACT_Audience[Gender_Other]), 100)
```

```DAX
Avg Age 18-24 =
DIVIDE(AVERAGE(FACT_Audience[Age_18_24]), 100)
```

```DAX
Avg Age 25-34 =
DIVIDE(AVERAGE(FACT_Audience[Age_25_34]), 100)
```

```DAX
Avg Age 35-44 =
DIVIDE(AVERAGE(FACT_Audience[Age_35_44]), 100)
```

```DAX
Avg Age 45-54 =
DIVIDE(AVERAGE(FACT_Audience[Age_45_54]), 100)
```

```DAX
Avg Age 55+ =
DIVIDE(AVERAGE(FACT_Audience[Age_55_plus]), 100)
```

## Rewarded vs Non Rewarded Comparison

```DAX
Avg Reward - Rewarded Videos =
CALCULATE(
    AVERAGE(FACT_Reward[Total_Reward]),
    FACT_Reward[Additional_Reward] > 0
)
```

```DAX
Avg Reward - Non Rewarded Videos =
CALCULATE(
    AVERAGE(FACT_Reward[Total_Reward]),
    FACT_Reward[Additional_Reward] = 0
)
```

```DAX
Avg Watch Time - Rewarded =
CALCULATE(
    AVERAGE(FACT_Traffic_SEO[Avg_Watch_Time]),
    FACT_Reward[Additional_Reward] > 0
)
```

```DAX
Avg Watch Time - Non Rewarded =
CALCULATE(
    AVERAGE(FACT_Traffic_SEO[Avg_Watch_Time]),
    FACT_Reward[Additional_Reward] = 0
)
```

```DAX
Avg Search % - Rewarded =
CALCULATE(
    DIVIDE(AVERAGE(FACT_Traffic_SEO[Source_Search]), 100),
    FACT_Reward[Additional_Reward] > 0
)
```

```DAX
Avg Search % - Non Rewarded =
CALCULATE(
    DIVIDE(AVERAGE(FACT_Traffic_SEO[Source_Search]), 100),
    FACT_Reward[Additional_Reward] = 0
)
```

```DAX
Avg Completion % - Rewarded =
CALCULATE(
    DIVIDE(AVERAGE(FACT_Traffic_SEO[Full_Video_%]), 100),
    FACT_Reward[Additional_Reward] > 0
)
```

```DAX
Avg Completion % - Non Rewarded =
CALCULATE(
    DIVIDE(AVERAGE(FACT_Traffic_SEO[Full_Video_%]), 100),
    FACT_Reward[Additional_Reward] = 0
)
```

## Optional Helper Column

Create this as a calculated column in `FACT_Reward` if you want a clean legend/filter:

```DAX
Additional_Reward_Flag =
IF(FACT_Reward[Additional_Reward] > 0, "Rewarded", "Non Rewarded")
```

## Date Use

Use `DIM_Date[Date]` as the axis for time visuals.

Examples:

- reward trend over time
- monthly monetization
- average views by month

## Notes

- If `Avg_Watch_Time` is stored as text instead of decimal seconds, convert it first in Power Query.
- Same for `Total_Play_Time` if you want duration-based analytics.
- If your `%_Qualified` measure in the `Measure` table is already correct, keep using it instead of recreating `Qualified View Rate`.
- All `%` measures above assume the raw columns store values like `36.0` for `36%`.
- Format all `%` measures as `Percentage` in Power BI.
- Set raw percentage columns to `Do not summarize / Ne pas resumer`.
