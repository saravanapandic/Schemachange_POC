
-- ******************************************************************
-- Script Name: R__3.0.1_Data_Analyst.sql
-- Description: This script will create database for Prod
-- Author: user name
-- Date Created: 18/08/2025
-- Last Modified: 18/08/2025
-- Version: 0.1
-- ******************************************************************

-- Change Log:
-- Date        Author          Description
-- ----------  --------------  --------------------------------------
-- 18/08/2025  user_name      Initial Version
-- 
-- ******************************************************************

-- USE ROLE DATABASE_OBJECTS_DEPLOYMENT_ADMIN;




-- 1. Create a warehouse
CREATE WAREHOUSE DATA_ANALYST_WH
  WITH WAREHOUSE_SIZE = 'XSMALL'
  AUTO_SUSPEND = 300
  AUTO_RESUME = TRUE
  INITIALLY_SUSPENDED = TRUE;

-- 2. Grant usage and operate privileges to the role
GRANT USAGE ON WAREHOUSE DATA_ANALYST_WH TO ROLE OBJECTS_DEPLOYMENT_ADMIN;
GRANT OPERATE ON WAREHOUSE DATA_ANALYST_WH TO ROLE OBJECTS_DEPLOYMENT_ADMIN;
