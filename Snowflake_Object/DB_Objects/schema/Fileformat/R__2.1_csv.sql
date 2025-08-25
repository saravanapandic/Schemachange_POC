
-- ******************************************************************
-- Script Name: R__1.0.1_Bank_for_internatinal.sql
-- Description: This script will create database for Prod
-- Author: user name
-- Date Created: 18/08/2025
-- Last Modified: 18/08/2025
-- Version: 0.1
-- ******************************************************************

-- Change Log:
-- Date        Author          Description
-- ----------  --------------  --------------------------------------
--   user_name      Initial Version
-- 
-- ******************************************************************

-- USE ROLE DATABASE_OBJECTS_DEPLOYMENT_ADMIN;

SET DB_NAME = '{{ db_name }}';
use database IDENTIFIER($DB_NAME);




CREATE OR REPLACE FILE FORMAT PUBLIC.csv_format
  TYPE = 'CSV'
  FIELD_DELIMITER = ','  -- Comma is the actual delimiter
  SKIP_HEADER = 1        -- Set to 1 if your file has a header row
  NULL_IF = ('NULL', 'null')
  EMPTY_FIELD_AS_NULL = TRUE
  FIELD_OPTIONALLY_ENCLOSED_BY = '"'  -- Handles quoted fields with commas
  ESCAPE_UNENCLOSED_FIELD = NONE;     
  DEVELOPMENT.PUBLIC.CSV_FORMAT;

CREATE STAGE PUBLIC.stage_LD
STORAGE_INTEGRATION = SF_LD_STG
URL = 'azure://uiapdstrg.blob.core.windows.net/snowflakepoc1';
use database prod_db;

