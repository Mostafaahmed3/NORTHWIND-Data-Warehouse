/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'Northwind_DW' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'Northwind_DW' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

use master ;

-- Drop and recreate the 'Northwind_DW' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Northwind_DW')
BEGIN
    ALTER DATABASE Northwind_DW SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Northwind_DW;
END;
GO

-- Create the 'Northwind_DW' database
CREATE DATABASE Northwind_DW;
GO

USE Northwind_DW;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
