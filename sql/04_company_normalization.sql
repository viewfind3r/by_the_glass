CREATE OR REPLACE TABLE `curious-mender-475710-a7.by_the_glass.final_table` AS

SELECT
  t.* EXCEPT(Company)
  ,COALESCE(m.bar, t.Company) AS bar
  ,m.bar_location
FROM curious-mender-475710-a7.by_the_glass.joined_table t
LEFT JOIN curious-mender-475710-a7.by_the_glass.bar_mapped m
ON TRIM(LOWER(t.Company)) = TRIM(LOWER(m.Company));
