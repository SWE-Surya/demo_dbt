
{{ config(materialized='table') }}


SELECT
    ID,
    FIRST_NAME,
	LAST_NAME,
	LOCATION,
	DEPARTMENT,
	EMAIL,
	CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME
FROM  {{ ref('INTMD_EMPLOYEES') }}

