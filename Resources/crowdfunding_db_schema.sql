-- drop table campaign
-- drop table contacts
-- drop table category
-- drop table subcategory

-- Using the database schema, create the tables in the correct order to handle the foreign keys.
CREATE TABLE campaign (
	cf_id VARCHAR NOT NULL,
	contact_id NUMERIC NOT NULL,
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal NUMERIC NOT NULL,
	pledged NUMERIC NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count NUMERIC NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category VARCHAR NOT NULL,
	subcategory VARCHAR NOT NULL,
	category_id VARCHAR NOT NULL,
	subcategory_id VARCHAR NOT NULL,
	CONSTRAINT "pk_campaign" PRIMARY KEY ("cf_id")
);


CREATE TABLE contacts (
	contact_id NUMERIC NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL,
	CONSTRAINT "pk_contacts" PRIMARY KEY ("contact_id")
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR NOT NULL,
	subcategory VARCHAR NOT NULL,
	CONSTRAINT "pk_subcategory" PRIMARY KEY ("subcategory_id")
);


CREATE TABLE category (
    category_id VARCHAR NOT NULL,
    category VARCHAR NOT NULL,
	CONSTRAINT "pk_category" PRIMARY KEY ("category_id")
);
		

-- Add foreign keys
ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");


-- Verify the table creation by running a SELECT statement for each table.
SELECT * FROM campaign
SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory


-- Import each CSV file into its corresponding SQL table. COMPLETE

-- Verify that each table has the correct data by running a SELECT statement for each 
SELECT * FROM campaign
SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory


