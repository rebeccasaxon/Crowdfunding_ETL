-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Campaign] (
    [cf_id] int64  NOT NULL ,
    [contact_id] int64  NOT NULL ,
    [company_name] object  NOT NULL ,
    [description] object  NOT NULL ,
    [goal] float64  NOT NULL ,
    [pledged] float64  NOT NULL ,
    [outcome] object  NOT NULL ,
    [backers_count] int64  NOT NULL ,
    [country] object  NOT NULL ,
    [currecy] object  NOT NULL ,
    [launch_date] object  NOT NULL ,
    [end_date] object  NOT NULL ,
    [category_id] object  NOT NULL ,
    [subcategory_id] object  NOT NULL ,
    CONSTRAINT [PK_Campaign] PRIMARY KEY CLUSTERED (
        [cf_id] ASC
    )
)

CREATE TABLE [contacts] (
    [contact_id] int64  NOT NULL ,
    [first_name] object  NOT NULL ,
    [last_name] object  NOT NULL ,
    [email] object  NOT NULL ,
    CONSTRAINT [PK_contacts] PRIMARY KEY CLUSTERED (
        [contact_id] ASC
    )
)

CREATE TABLE [category] (
    [category_id] object  NOT NULL ,
    [category] object  NOT NULL ,
    CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED (
        [category_id] ASC
    )
)

CREATE TABLE [subcategor] (
    [subcategory_id] object  NOT NULL ,
    [subcategory] object  NOT NULL ,
    CONSTRAINT [PK_subcategor] PRIMARY KEY CLUSTERED (
        [subcategory_id] ASC
    )
)

ALTER TABLE [Campaign] WITH CHECK ADD CONSTRAINT [FK_Campaign_contact_id] FOREIGN KEY([contact_id])
REFERENCES [contacts] ([contact_id])

ALTER TABLE [Campaign] CHECK CONSTRAINT [FK_Campaign_contact_id]

ALTER TABLE [Campaign] WITH CHECK ADD CONSTRAINT [FK_Campaign_category_id] FOREIGN KEY([category_id])
REFERENCES [category] ([category_id])

ALTER TABLE [Campaign] CHECK CONSTRAINT [FK_Campaign_category_id]

ALTER TABLE [Campaign] WITH CHECK ADD CONSTRAINT [FK_Campaign_subcategory_id] FOREIGN KEY([subcategory_id])
REFERENCES [subcategor] ([subcategory_id])

ALTER TABLE [Campaign] CHECK CONSTRAINT [FK_Campaign_subcategory_id]

COMMIT TRANSACTION QUICKDBD