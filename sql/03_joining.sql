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
