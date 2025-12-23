WITH atr_dedup AS (
  SELECT DISTINCT wine_name
  ,color
  , residual_sugar
  , grape
  , grape_type
  , aroma_category
  , country_origin
  , origin_region
  , quality_type
  , confidence
  , wine_type
FROM curious-mender-475710-a7.by_the_glass.attributes_enriched
)

SELECT *
FROM curious-mender-475710-a7.by_the_glass.pour_list b
LEFT JOIN atr_dedup s
ON LOWER(b.`Wine Name`) = LOWER(s.wine_name);

#Mapped table correction and rejoin
CREATE OR REPLACE TABLE `curious-mender-475710-a7.by_the_glass.final_table` AS
SELECT
  t.* EXCEPT(company),
  COALESCE(m.bar, t.Company) AS bar,
  m.bar_location
FROM `curious-mender-475710-a7.by_the_glass.joined_table` t
LEFT JOIN `curious-mender-475710-a7.by_the_glass.bar_mapped` m
ON REPLACE(TRIM(LOWER(t.company)), '’', "'")
   = REPLACE(TRIM(LOWER(m.Company)), '’', "'");
