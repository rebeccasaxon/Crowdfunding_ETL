CREATE TABLE Campaign (
	    cf_id INT  NOT NULL,
	    contact_id INT  NOT NULL ,
	    company_name varchar(50)   NOT NULL ,
	    description varchar(200)   NOT NULL ,
	    goal varchar(50) NOT NULL ,
	    pledged varchar(50) NOT NULL ,
	    outcome varchar(50)  NOT NULL ,
	    backers_count INT  NOT NULL ,
	    country varchar(50)  NOT NULL ,
	    currecy varchar(50)  NOT NULL ,
	    launch_date varchar(50)   NOT NULL ,
	    end_date varchar(50)   NOT NULL ,
	    category_id varchar(50)  NOT NULL ,
	    subcategory_id varchar(50)  NOT NULL ,
	    CONSTRAINT PK_Campaign PRIMARY KEY (
	        cf_id
	    )
	);
	

CREATE TABLE contacts (
	    contact_id INT  NOT NULL ,
	    first_name varchar(50)   NOT NULL ,
	    last_name varchar(50)  NOT NULL ,
	    email varchar(50)  NOT NULL ,
	    CONSTRAINT PK_contacts PRIMARY KEY (
	        contact_id
	    )
	);
	

CREATE TABLE category (
	    category_id varchar(50)  NOT NULL ,
	    category varchar(50)  NOT NULL ,
	    CONSTRAINT PK_category PRIMARY KEY (
	        category_id
	    )
	);
	

CREATE TABLE subcategory (
	    subcategory_id varchar(50) NOT NULL ,
	    subcategory varchar(50) NOT NULL ,
	    CONSTRAINT PK_subcategory PRIMARY KEY (
	        subcategory_id
	    )
	);
	

ALTER TABLE Campaign ADD CONSTRAINT FK_Campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES contacts (contact_id);
		

ALTER TABLE Campaign ADD CONSTRAINT FK_Campaign_category_id FOREIGN KEY(category_id)
REFERENCES category (category_id);
	


	

ALTER TABLE Campaign ADD CONSTRAINT FK_Campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES subcategory (subcategory_id);

Select *
From campaign;
Select *
From contacts;
Select *
From subcategory;
Select *
From category;
	


	
