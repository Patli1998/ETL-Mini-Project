CREATE TABLE contacts (
"contact_id" INT PRIMARY KEY NOT NULL,
"first_name" VARCHAR (20) NOT NULL,
"last_name" VARCHAR (20) NOT NULL,
"email" VARCHAR (50) NOT NULL);


CREATE TABLE category(
"category_id" VARCHAR(10) PRIMARY KEY NOT NULL,
"category_name" VARCHAR(100) NOT NULL);

CREATE TABLE Subcategory(
"subcategory_id" VARCHAR(10) PRIMARY KEY NOT NULL,
"subcategory_name" VARCHAR(100) NOT NULL
);

CREATE TABLE campaign (
    "cf_id" int PRIMARY KEY NOT NULL,
    "contact_id" int NOT NULL REFERENCES contacts (contact_id),
    "company_name" VARCHAR(100) NOT NULL,
    "description" text   NOT NULL,
	"goal" numeric(10) NOT NULL,
	"pledged" numeric(10) NOT NULL,
	"outcome" VARCHAR(100) NOT NULL,
	"backers_count" int NOT NULL,
	"country" VARCHAR(5) NOT NULL,
	"currency" VARCHAR(5) NOT NULL,
	"launch_date" date NOT NULL,
	"end_date" date NOT NULL,
	"category_id" VARCHAR(10) NOT NULL REFERENCES category (category_id),
	"subcategory_id" VARCHAR(10) NOT NULL REFERENCES Subcategory(subcategory_id));
	
	
