
-- ******************************************************************
-- Script Name: R__1.0.1_Bank_for_internatinal.sql
-- Description: This script will create table  for bank_devops teams
-- Author: user name
-- Date Created: 25/08/2025
-- Last Modified: 25/08/2025
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



create or replace TABLE DEVELOPMENT.PUBLIC.BANK_FOR_INTERNATIONAL (
	VARIABLE varchar, VARIABLE_NAME varchar, SERIES_ID varchar, MEASURE varchar, UNIT varchar, FREQUENCY varchar, MEASUREMENT_TYPE varchar, SOURCE varchar, GEO_NAME varchar, COUNTERPARTY_GEO_NAME varchar
);
