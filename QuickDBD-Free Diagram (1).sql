-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/vQpT9k
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [campaign_csv] (
    [cf_id] INT  NOT NULL ,
    [contact_id] INT  NOT NULL ,
    [company_name] varchar(50)  NOT NULL ,
    [description] varchar(100)  NOT NULL ,
    [goal] INT  NOT NULL ,
    [pledged] INT  NOT NULL ,
    [outcome] varchar(30)  NOT NULL ,
    [backers_count] INT  NOT NULL ,
    [country] varchar(2)  NOT NULL ,
    [currency] varchar(3)  NOT NULL ,
    [launch_date] date  NOT NULL ,
    [end_date] date  NOT NULL ,
    [category_id] varchar(4)  NOT NULL ,
    [subcategory_id] varchar(10)  NOT NULL ,
    CONSTRAINT [PK_campaign_csv] PRIMARY KEY CLUSTERED (
        [cf_id] ASC
    )
)

CREATE TABLE [contacts_csv] (
    [contact_id] INT  NOT NULL ,
    [first_name] varchar(30)  NOT NULL ,
    [last_name] varchar(30)  NOT NULL ,
    [email] varchar(75)  NOT NULL ,
    CONSTRAINT [PK_contacts_csv] PRIMARY KEY CLUSTERED (
        [contact_id] ASC
    )
)

CREATE TABLE [category_csv] (
    [category_id] varchar(4)  NOT NULL ,
    [category] varchar(30)  NOT NULL ,
    CONSTRAINT [PK_category_csv] PRIMARY KEY CLUSTERED (
        [category_id] ASC
    )
)

CREATE TABLE [subcategory_csv] (
    [subcategory_id] varchar(10)  NOT NULL ,
    [subcategory] varchar(30)  NOT NULL ,
    CONSTRAINT [PK_subcategory_csv] PRIMARY KEY CLUSTERED (
        [subcategory_id] ASC
    )
)

ALTER TABLE [contacts_csv] WITH CHECK ADD CONSTRAINT [FK_contacts_csv_contact_id] FOREIGN KEY([contact_id])
REFERENCES [campaign_csv] ([contact_id])

ALTER TABLE [contacts_csv] CHECK CONSTRAINT [FK_contacts_csv_contact_id]

ALTER TABLE [category_csv] WITH CHECK ADD CONSTRAINT [FK_category_csv_category_id] FOREIGN KEY([category_id])
REFERENCES [campaign_csv] ([category_id])

ALTER TABLE [category_csv] CHECK CONSTRAINT [FK_category_csv_category_id]

ALTER TABLE [subcategory_csv] WITH CHECK ADD CONSTRAINT [FK_subcategory_csv_subcategory_id] FOREIGN KEY([subcategory_id])
REFERENCES [campaign_csv] ([subcategory_id])

ALTER TABLE [subcategory_csv] CHECK CONSTRAINT [FK_subcategory_csv_subcategory_id]

COMMIT TRANSACTION QUICKDBD