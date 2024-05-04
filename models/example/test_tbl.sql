
{{ config(materialized='table') }}


with new_source_data as (
  
SELECT
    ID,
    FIRST_NAME,
	LAST_NAME,
	LOCATION,
	DEPARTMENT,
	EMAIL,
	CONCAT(FIRST_NAME,LAST_NAME) AS FULL_NAME
FROM FIVETRAN_DATABASE.GOOGLE_SHEETS.EMPLOYEES

)

select * from new_source_data
