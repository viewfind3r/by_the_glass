CREATE OR REPLACE TABLE curious-mender-475710-a7.by_the_glass.clean_table AS
SELECT
  -- 1. Rename columns to snake_case and drop duplicates
  `Customer ID` AS customer_id
  ,`Wine Name` AS wine_name
  , `Volume in ml` AS volume_in_ml
  , `Price in EUR` AS price_in_eur
  , `Price per 100ml` AS price_per_100ml
  ,discount
  ,`time stamp` AS time_stamp
  , `Date` AS `date`
  , `Year` AS year
  , `Month` AS month
  , `Day` AS day
  , `Hour` AS hour
  , `color_1` AS color
  ,residual_sugar
  ,grape_1 AS grape_name
  ,grape_type
  ,aroma_category
  ,country_origin
  ,origin_region
  ,quality_type
  ,confidence
  ,wine_type
  ,bar
  ,bar_location
  ,`Visit Count` AS visit_count

FROM curious-mender-475710-a7.by_the_glass.final_table;
