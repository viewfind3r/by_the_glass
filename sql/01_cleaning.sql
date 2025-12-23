CREATE OR REPLACE TABLE `curious-mender-475710-a7.by_the_glass.attributes_enriched`  AS
SELECT
  string_field_0 AS wine_name
  ,string_field_1 AS color
  ,tring_field_2 AS grape
  ,string_field_3 AS residual_sugar
  ,string_field_4 AS country
  ,string_field_5 AS aroma_category
  string_field_6 AS grape_type
FROM `curious-mender-475710-a7.by_the_glass.wine_attributes_enriched` ;

#cleaning mapping TABLE
CREATE OR REPLACE TABLE `curious-mender-475710-a7.by_the_glass.bar_mapped` AS

SELECT
  string_field_0 AS bar
  , string_field_1 AS Company
  , string_field_2 AS bar_location
FROM `curious-mender-475710-a7.by_the_glass.mapping_bar`
