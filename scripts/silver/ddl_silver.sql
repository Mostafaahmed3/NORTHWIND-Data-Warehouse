
/*
===============================================================================
DDL Script: Create Silver Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'silver' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'silver' Tables
===============================================================================
*/

IF OBJECT_ID('silver.supplier') IS NOT NULL 
DROP TABLE silver.supplier;

CREATE TABLE silver.supplier (
    id INT ,
    company VARCHAR(100),
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    email_address VARCHAR(100),
    job_title VARCHAR(50),
    business_phone VARCHAR(30),
    home_phone VARCHAR(30),
    mobile_phone VARCHAR(30),
    fax_number VARCHAR(30),
    address VARCHAR(255),
    city VARCHAR(50),
    state_province VARCHAR(50),
    zip_postal_code VARCHAR(20),
    country_region VARCHAR(50),
    web_page VARCHAR(255),
    notes varchar(max),
    attachments VARCHAR(50),
	dwh_create_date    DATETIME2 DEFAULT GETDATE()
);



IF OBJECT_ID('silver.employee') IS NOT NULL
DROP TABLE silver.employee;

CREATE TABLE silver.employee (
    id INT ,
    company VARCHAR(100),
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    email_address VARCHAR(100),
    job_title VARCHAR(50),
    business_phone VARCHAR(30),
    home_phone VARCHAR(30),
    mobile_phone VARCHAR(30),
    fax_number VARCHAR(30),
    address VARCHAR(255),
    city VARCHAR(50),
    state_province VARCHAR(50),
    zip_postal_code VARCHAR(20),
    country_region VARCHAR(50),
    web_page VARCHAR(255),
    notes varchar(max),
    attachments VARCHAR(500),
	dwh_create_date    DATETIME2 DEFAULT GETDATE()
);


IF OBJECT_ID('silver.customer') IS NOT NULL 
DROP TABLE silver.customer;

CREATE TABLE silver.customer (
    id INT ,
    company VARCHAR(100),
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    email_address VARCHAR(100),
    job_title VARCHAR(50),
    business_phone VARCHAR(30),
    home_phone VARCHAR(30),
    mobile_phone VARCHAR(30),
    fax_number VARCHAR(30),
    address VARCHAR(255),
    city VARCHAR(50),
    state_province VARCHAR(50),
    zip_postal_code VARCHAR(20),
    country_region VARCHAR(50),
    web_page VARCHAR(255),
    notes varchar(max),
    attachments varchar(max),
	dwh_create_date    DATETIME2 DEFAULT GETDATE()
);


IF OBJECT_ID('silver.product') IS NOT NULL 
DROP TABLE silver.product;

CREATE TABLE silver.product (
    supplier_id INT,
    id INT ,
    product_code VARCHAR(50),
    product_name VARCHAR(100),
    description varchar(max),
    standard_cost DECIMAL(10,3),
    list_price DECIMAL(10,3),
    reorder_level INT,
    target_level INT,
    quantity_per_unit VARCHAR(50),
    discontinued BIT,
    minimum_reorder_quantity INT,
    category VARCHAR(50),
    attachments VARCHAR(50),
	dwh_create_date    DATETIME2 DEFAULT GETDATE()
);


IF OBJECT_ID('silver.orders') IS NOT NULL 
DROP TABLE silver.orders;

CREATE TABLE silver.orders (
    id INT ,
    employee_id INT,
    customer_id INT,
    order_date NVARCHAR(50),
    shipped_date VARCHAR(50),
    shipper_id INT,
    ship_name VARCHAR(100),
    ship_address VARCHAR(255),
    ship_city VARCHAR(50),
    ship_state_province VARCHAR(50),
    ship_zip_postal_code VARCHAR(20),
    ship_country_region VARCHAR(50),
    shipping_fee DECIMAL(10,3),
    taxes DECIMAL(10,3),
    payment_type VARCHAR(50),
    paid_date VARCHAR(50),
    notes varchar(max),
    tax_rate DECIMAL(5,3),
    tax_status_id INT,
    status_id INT,
    modified_date VARCHAR(50),
	dwh_create_date    DATETIME2 DEFAULT GETDATE()
);


IF OBJECT_ID('silver.order_details') IS NOT NULL 
DROP TABLE silver.order_details;

CREATE TABLE silver.order_details (
    id INT ,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,3),
    discount DECIMAL(10,3),
    status_id INT,
    date_allocated DATETIME,
    purchase_order_id INT,
    inventory_id INT,
	dwh_create_date    DATETIME2 DEFAULT GETDATE()
);


IF OBJECT_ID('silver.purchase_order_details') IS NOT NULL 
DROP TABLE silver.purchase_order_details;

CREATE TABLE silver.purchase_order_details (
    id INT ,
    purchase_order_id INT,
    product_id INT,
    quantity INT,
    unit_cost DECIMAL(10,3),
    date_received DATETIME,
    posted_to_inventory BIT,
    inventory_id INT,
	dwh_create_date    DATETIME2 DEFAULT GETDATE()
);
