
CREATE SCHEMA crowdfunding AUTHORIZATION pg_database_owner;

-- DROP TYPE crowdfunding.campaign;

CREATE TYPE crowdfunding.campaign AS (
	project_id serial4,
	"name" varchar(255),
	description text,
	cf_id int4,
	contact_id int4,
	company_name varchar(50),
	goal float4,
	pledged float4,
	outcome varchar(50),
	backers_count int4,
	country varchar(50),
	currency varchar(50),
	launched_date varchar(50),
	end_date varchar(50),
	staff_pick bool,
	spotlight bool,
	category_id varchar(50),
	subcategory_id varchar(50));

-- DROP TYPE crowdfunding.category;

CREATE TYPE crowdfunding.category AS (
	project_id serial4,
	"name" varchar(255),
	description text,
	category_id varchar(50),
	category varchar(50));

-- DROP TYPE crowdfunding.contacts;

CREATE TYPE crowdfunding.contacts AS (
	contact_id int4,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(50));

-- DROP TYPE crowdfunding.crowdfunding;

CREATE TYPE crowdfunding.crowdfunding AS (
	project_id serial4,
	"name" varchar(255),
	description text,
	cf_id int4,
	contact_id int4,
	company_name varchar(50),
	blurb varchar(50),
	goal int4,
	pledged int4,
	outcome varchar(50),
	backers_count int4,
	country varchar(50),
	currency varchar(50),
	launched_at int4,
	deadline int4,
	staff_pick bool,
	spotlight bool,
	"category & sub-category" varchar(50));

-- DROP TYPE crowdfunding.subcategory;

CREATE TYPE crowdfunding.subcategory AS (
	project_id serial4,
	"name" varchar(255),
	description text,
	subcategory_id varchar(50),
	subcategory varchar(50));

-- DROP TYPE crowdfunding."_campaign";

CREATE TYPE crowdfunding."_campaign" (
	INPUT = array_in,
	OUTPUT = array_out,
	RECEIVE = array_recv,
	SEND = array_send,
	ANALYZE = array_typanalyze,
	ALIGNMENT = 8,
	STORAGE = any,
	CATEGORY = A,
	ELEMENT = crowdfunding.campaign,
	DELIMITER = ',');

-- DROP TYPE crowdfunding."_category";

CREATE TYPE crowdfunding."_category" (
	INPUT = array_in,
	OUTPUT = array_out,
	RECEIVE = array_recv,
	SEND = array_send,
	ANALYZE = array_typanalyze,
	ALIGNMENT = 8,
	STORAGE = any,
	CATEGORY = A,
	ELEMENT = crowdfunding.category,
	DELIMITER = ',');

-- DROP TYPE crowdfunding."_contacts";

CREATE TYPE crowdfunding."_contacts" (
	INPUT = array_in,
	OUTPUT = array_out,
	RECEIVE = array_recv,
	SEND = array_send,
	ANALYZE = array_typanalyze,
	ALIGNMENT = 8,
	STORAGE = any,
	CATEGORY = A,
	ELEMENT = crowdfunding.contacts,
	DELIMITER = ',');

-- DROP TYPE crowdfunding."_crowdfunding";

CREATE TYPE crowdfunding."_crowdfunding" (
	INPUT = array_in,
	OUTPUT = array_out,
	RECEIVE = array_recv,
	SEND = array_send,
	ANALYZE = array_typanalyze,
	ALIGNMENT = 8,
	STORAGE = any,
	CATEGORY = A,
	ELEMENT = crowdfunding.crowdfunding,
	DELIMITER = ',');

-- DROP TYPE crowdfunding."_subcategory";

CREATE TYPE crowdfunding."_subcategory" (
	INPUT = array_in,
	OUTPUT = array_out,
	RECEIVE = array_recv,
	SEND = array_send,
	ANALYZE = array_typanalyze,
	ALIGNMENT = 8,
	STORAGE = any,
	CATEGORY = A,
	ELEMENT = crowdfunding.subcategory,
	DELIMITER = ',');

-- DROP SEQUENCE crowdfunding.campaign_project_id_seq;

CREATE SEQUENCE crowdfunding.campaign_project_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE crowdfunding.category_project_id_seq;

CREATE SEQUENCE crowdfunding.category_project_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE crowdfunding.crowdfunding_project_id_seq;

CREATE SEQUENCE crowdfunding.crowdfunding_project_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE crowdfunding.subcategory_project_id_seq;

CREATE SEQUENCE crowdfunding.subcategory_project_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;-- crowdfunding.campaign definition

-- Drop table

-- DROP TABLE campaign;

CREATE TABLE campaign (
	project_id serial4 NOT NULL,
	"name" varchar(255) NULL,
	description text NULL,
	cf_id int4 NULL,
	contact_id int4 NULL,
	company_name varchar(50) NULL,
	goal float4 NULL,
	pledged float4 NULL,
	outcome varchar(50) NULL,
	backers_count int4 NULL,
	country varchar(50) NULL,
	currency varchar(50) NULL,
	launched_date varchar(50) NULL,
	end_date varchar(50) NULL,
	staff_pick bool NULL,
	spotlight bool NULL,
	category_id varchar(50) NULL,
	subcategory_id varchar(50) NULL,
	CONSTRAINT campaign_pkey PRIMARY KEY (project_id)
);


-- crowdfunding.category definition

-- Drop table

-- DROP TABLE category;

CREATE TABLE category (
	project_id serial4 NOT NULL,
	"name" varchar(255) NULL,
	description text NULL,
	category_id varchar(50) NULL,
	category varchar(50) NULL,
	CONSTRAINT category_pkey PRIMARY KEY (project_id)
);


-- crowdfunding.contacts definition

-- Drop table

-- DROP TABLE contacts;

CREATE TABLE contacts (
	contact_id int4 NULL,
	first_name varchar(50) NULL,
	last_name varchar(50) NULL,
	email varchar(50) NULL
);


-- crowdfunding.crowdfunding definition

-- Drop table

-- DROP TABLE crowdfunding;

CREATE TABLE crowdfunding (
	project_id serial4 NOT NULL,
	"name" varchar(255) NULL,
	description text NULL,
	cf_id int4 NULL,
	contact_id int4 NULL,
	company_name varchar(50) NULL,
	blurb varchar(50) NULL,
	goal int4 NULL,
	pledged int4 NULL,
	outcome varchar(50) NULL,
	backers_count int4 NULL,
	country varchar(50) NULL,
	currency varchar(50) NULL,
	launched_at int4 NULL,
	deadline int4 NULL,
	staff_pick bool NULL,
	spotlight bool NULL,
	"category & sub-category" varchar(50) NULL,
	CONSTRAINT crowdfunding_pkey PRIMARY KEY (project_id)
);


-- crowdfunding.subcategory definition

-- Drop table

-- DROP TABLE subcategory;

CREATE TABLE subcategory (
	project_id serial4 NOT NULL,
	"name" varchar(255) NULL,
	description text NULL,
	subcategory_id varchar(50) NULL,
	subcategory varchar(50) NULL,
	CONSTRAINT subcategory_pkey PRIMARY KEY (project_id)
);