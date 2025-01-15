-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/aHVPEJ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [category] (
    [category_id] VARCHAR(5)  NOT NULL ,
    [category] VARCHAR(20)  NOT NULL ,
    CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED (
        [category_id] ASC
    )
)

CREATE TABLE [subcategory] (
    [subcategory_id] VARCHAR(10)  NOT NULL ,
    [subcategory] VARCHAR(30)  NOT NULL ,
    CONSTRAINT [PK_subcategory] PRIMARY KEY CLUSTERED (
        [subcategory_id] ASC
    )
)

CREATE TABLE [contacts] (
    [contact_id] VARCHAR(20)  NOT NULL ,
    [first_name] VARCHAR(40)  NOT NULL ,
    [last_name] VARCHAR(40)  NOT NULL ,
    [email] VARCHAR(50)  NOT NULL ,
    CONSTRAINT [PK_contacts] PRIMARY KEY CLUSTERED (
        [contact_id] ASC
    )
)

CREATE TABLE [campaing] (
    [cf_id] VARCHAR(10)  NOT NULL ,
    [contact_id] VARCHAR(10)  NOT NULL ,
    [company_name] VARCHAR(40)  NOT NULL ,
    [description] VARCHAR(40)  NOT NULL ,
    [goal] float  NOT NULL ,
    [pledged] float  NOT NULL ,
    [outcome] VARCHAR(20)  NOT NULL ,
    [backers_count] INTEGER  NOT NULL ,
    [country] VARCHAR(5)  NOT NULL ,
    [currency] VARCHAR(5)  NOT NULL ,
    [launch_date] DATE  NOT NULL ,
    [end_date] DATE  NOT NULL ,
    [category_id] VARCHAR(5)  NOT NULL ,
    [subcategory_id] VARCHAR(10)  NOT NULL ,
    CONSTRAINT [PK_campaing] PRIMARY KEY CLUSTERED (
        [cf_id] ASC
    )
)

ALTER TABLE [campaing] WITH CHECK ADD CONSTRAINT [FK_campaing_contact_id] FOREIGN KEY([contact_id])
REFERENCES [contacts] ([contact_id])

ALTER TABLE [campaing] CHECK CONSTRAINT [FK_campaing_contact_id]

ALTER TABLE [campaing] WITH CHECK ADD CONSTRAINT [FK_campaing_category_id] FOREIGN KEY([category_id])
REFERENCES [category] ([category_id])

ALTER TABLE [campaing] CHECK CONSTRAINT [FK_campaing_category_id]

ALTER TABLE [campaing] WITH CHECK ADD CONSTRAINT [FK_campaing_subcategory_id] FOREIGN KEY([subcategory_id])
REFERENCES [subcategory] ([subcategory_id])

ALTER TABLE [campaing] CHECK CONSTRAINT [FK_campaing_subcategory_id]

COMMIT TRANSACTION QUICKDBD