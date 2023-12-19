DROP TABLE "campaign";
DROP TABLE "contacts";
DROP TABLE "category";
DROP TABLE "subcategory";

CREATE TABLE "campaign" (
    "cf_id" INT  NOT NULL ,
    "contact_id" INT  NOT NULL ,
    "company_name" varchar(50)  NOT NULL ,
    "description" varchar(100)  NOT NULL ,
    "goal" FLOAT NOT NULL ,
    "pledged" FLOAT NOT NULL ,
    "outcome" varchar(30)  NOT NULL ,
    "backers_count" INT  NOT NULL ,
    "country" varchar(2)  NOT NULL ,
    "currency" varchar(3)  NOT NULL ,
    "launched_date" date  NOT NULL ,
    "end_date" date  NOT NULL ,
    "category_id" varchar(4)  NOT NULL ,
    "subcategory_id" varchar(10)  NOT NULL ,
    CONSTRAINT "PK_campaign" PRIMARY KEY (
        "cf_id"
    )
);

CREATE TABLE "contacts" (
    "contact_id" INT  NOT NULL ,
    "first_name" varchar(30)  NOT NULL ,
    "last_name" varchar(30)  NOT NULL ,
    "email" varchar(75)  NOT NULL ,
    CONSTRAINT "PK_contacts" PRIMARY KEY (
        "contact_id"
    )
);

CREATE TABLE "category" (
    "category_id" varchar(4)  NOT NULL ,
    "category" varchar(30)  NOT NULL ,
    CONSTRAINT "PK_category" PRIMARY KEY (
        "category_id"
    )
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(10)  NOT NULL ,
    "subcategory" varchar(30)  NOT NULL ,
    CONSTRAINT "PK_subcategory" PRIMARY KEY (
        "subcategory_id"
    )
);

ALTER TABLE "campaign" ADD CONSTRAINT "FK_contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "FK_category_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "FK_subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");
