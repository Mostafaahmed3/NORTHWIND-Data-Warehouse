/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/

IF OBJECT_ID('bronze.supplier') IS NOT NULL 
DROP TABLE bronze.supplier;

CREATE TABLE bronze.supplier (
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
    attachments VARBINARY(MAX) 
);


IF OBJECT_ID('bronze.employee') IS NOT NULL
DROP TABLE bronze.employee;

CREATE TABLE bronze.employee (
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
    attachments VARCHAR(50)
);


IF OBJECT_ID('bronze.customer') IS NOT NULL 
DROP TABLE bronze.customer;

CREATE TABLE bronze.customer (
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
    attachments varchar(max)
);


IF OBJECT_ID('bronze.product') IS NOT NULL 
DROP TABLE bronze.product;

CREATE TABLE bronze.product (
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
    attachments VARCHAR(50)
);


IF OBJECT_ID('bronze.orders') IS NOT NULL 
DROP TABLE bronze.orders;

CREATE TABLE bronze.orders (
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
    modified_date VARCHAR(50)
);


IF OBJECT_ID('bronze.order_details') IS NOT NULL 
DROP TABLE bronze.order_details;

CREATE TABLE bronze.order_details (
    id INT ,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,3),
    discount DECIMAL(10,3),
    status_id INT,
    date_allocated DATETIME,
    purchase_order_id INT,
    inventory_id INT
);


IF OBJECT_ID('bronze.purchase_order_details') IS NOT NULL 
DROP TABLE bronze.purchase_order_details;

CREATE TABLE bronze.purchase_order_details (
    id INT ,
    purchase_order_id INT,
    product_id INT,
    quantity INT,
    unit_cost DECIMAL(10,3),
    date_received DATETIME,
    posted_to_inventory BIT,
    inventory_id INT
);
