CREATE TABLE category (
    category_id VARCHAR(50) PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory_name VARCHAR(50) NOT NULL
);

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE campaign (
    campaign_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    cf_id INT,
    contact_id INT REFERENCES contacts (contact_id) NULL,
    company_name VARCHAR(50),
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(50),
    currency VARCHAR(50),
    launched_date DATE,
    end_date DATE,
    staff_pick BOOLEAN,
    spotlight BOOLEAN,
    category_id VARCHAR(50) REFERENCES category (category_id) NULL,
    subcategory_id VARCHAR(50) REFERENCES subcategory (subcategory_id) NULL
);