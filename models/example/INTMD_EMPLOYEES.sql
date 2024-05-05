
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

-- with source_data as (

--     select 1 as id
--     union all
--     select 20 as id

-- )

-- select *
-- from source_data


-- create TABLE FIVETRAN_DATABASE.GOOGLE_SHEETS.FINAL_EMPLOYEES (
--     ID NUMBER(38,0),
--     FIRST_NAME VARCHAR(256),
-- 	LAST_NAME VARCHAR(256),
--     FULL_NAME  VARCHAR(256)
-- 	LOCATION VARCHAR(256),
-- 	DEPARTMENT VARCHAR(256),
-- 	EMAIL VARCHAR(256)
-- );

-- INSERT INTO FIVETRAN_DATABASE.GOOGLE_SHEETS.FINAL_EMPLOYEES(
--     ID,
--     FIRST_NAME,
-- 	LAST_NAME,
-- 	LOCATION,
-- 	DEPARTMENT,
-- 	EMAIL,
--     FULL_NAME
--     )


SELECT
    ID,
    FIRST_NAME,
	LAST_NAME,
	LOCATION,
	DEPARTMENT,
	EMAIL
FROM FIVETRAN_DATABASE.GOOGLE_SHEETS.EMPLOYEES





    

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
