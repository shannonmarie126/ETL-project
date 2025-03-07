CREATE TABLE category (
category_id varchar NOT NULL,
category varchar NOT NULL,
PRIMARY KEY (category_id)
)

CREATE TABLE subcategory (
subcategory_id varchar NOT NULL,
subcategory varchar NOT NULL,
PRIMARY KEY (subcategory_id)
)

CREATE TABLE contacts (
contact_id int NOT NULL,
first_name varchar NOT NULL,
last_name varchar NOT NULL,
email varchar NOT NULL,
PRIMARY KEY (contact_id)
)

CREATE TABLE campaign (
cf_id int NOT NULL,
contact_id int NOT NULL,
company_name varchar NOT NULL,
dsecription varchar NOT NULL,
goal float NOT NULL,
pledged float NOT NULL,
outcome varchar NOT NULL,
backer_count int NOT NULL,
country varchar NOT NULL,
currency varchar NOT NULL,
lauch_date date NOT NULL,
end_date date NOT NULL,
category_id varchar NOT NULL,
subcategory_id varchar NOT NULL,
PRIMARY KEY (cf_id),
FOREIGN KEY (contact_id) references contacts (contact_id),
FOREIGN KEY (category_id) references category (category_id),
FOREIGN KEY (subcategory_id) references subcategory (subcategory_id)
)

SELECT *
FROM campaign

SELECT *
FROM category

SELECT *
FROM contacts

SELECT *
FROM subcategory