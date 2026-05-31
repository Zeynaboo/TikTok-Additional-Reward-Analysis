# Data

This repository does not publish the raw private TikTok Studio dataset by default.

Recommended public-safe strategy:

- keep raw exports private
- share only a sanitized sample or schema
- document every field used in the analysis

Current contents:

- `data-dictionary.md`: field definitions
- `tiktok_post_analytics_schema.csv`: schema-only template with headers

If you later choose to publish a sample dataset, add:

- `tiktok_rewards_sanitized.csv`

and keep personally sensitive or financially sensitive fields anonymized when needed.

Recommended public-safe approach for this project:

- keep raw TikTok Studio exports private
- optionally publish a reduced analytical sample with:
  - normalized `Video_ID`
  - engagement metrics
  - traffic metrics
  - audience percentages
- remove or mask fields you consider financially sensitive if you do not want to expose exact revenue values publicly
