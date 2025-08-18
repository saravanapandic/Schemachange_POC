
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


-- 1. Create the role
CREATE ROLE OBJECTS_DEPLOYMENT_ADMIN;

-- 2. Grant privileges to create schemas in a specific database
GRANT CREATE SCHEMA ON DATABASE PROD_DB TO ROLE OBJECTS_DEPLOYMENT_ADMIN;

-- 3. Grant usage on the database
GRANT USAGE ON DATABASE PROD_DB TO ROLE OBJECTS_DEPLOYMENT_ADMIN;


-- 4. Grant privileges on future schemas and objects
GRANT ALL PRIVILEGES ON FUTURE SCHEMAS IN DATABASE PROD_DB TO ROLE OBJECTS_DEPLOYMENT_ADMIN;

-- 5. Assign the role to a user
GRANT ROLE OBJECTS_DEPLOYMENT_ADMIN TO USER SARAVANAPANDI;
