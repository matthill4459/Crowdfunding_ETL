-- Create category table
CREATE TABLE category (
    category_id VARCHAR(50) PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);
-- Create subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);
-- Create contact table
CREATE TABLE contact (
    contact_id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) NOT NULL
);
-- Create crowdfunding table with foreign keys
CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INTEGER REFERENCES contact(contact_id),
    company_name VARCHAR(255),
    description TEXT,
    goal DECIMAL(15, 2),
    pledged DECIMAL(15, 2),
    outcome VARCHAR(255),
    backers_count INTEGER,
    country VARCHAR(255),
    currency VARCHAR(10),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(50) REFERENCES category(category_id),
    subcategory_id VARCHAR(50) REFERENCES subcategory(subcategory_id)
);