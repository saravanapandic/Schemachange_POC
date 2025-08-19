
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
use database $DB_NAME;


create or replace TABLE PUBLIC.BANK_FOR_INTERNATIONAL_2 (
	VARIABLE varchar, VARIABLE_NAME varchar, SERIES_ID varchar, MEASURE varchar, UNIT varchar, FREQUENCY varchar, MEASUREMENT_TYPE varchar, SOURCE varchar, GEO_NAME varchar, COUNTERPARTY_GEO_NAME varchar
);