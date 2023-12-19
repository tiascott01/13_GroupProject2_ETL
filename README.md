# 13_GroupProject2_ETL
## Project Summary

This repository contains a project which extracts, transforms, and loads crowdfunding data from two resource xlsx files (crowdfunding and contacts_uncleaned). The files were initially imported and analyzed the data using jupyter notebook. Each analysis was exported as a csv file and then combined into a SQL database using PGAdmin 4. The imported tables were queried using SQL in which code and csv files were exported into the queries folder. 

---
## GitHub File Navigation
  * Main Repo
      * ETL_Mini_Project_TScott_HMclean - jupyter notebook which contains all code, figures, and export functions
      * crowdfunding_db_schema.SQL - SQL schema that creates and modifies tables for the SQL queries.
      * crowdfunding_ERD.png - Visual image of the tables and thier relationships. 
  * Queries Folder
      * Query_Campaign_Contact_Join.csv - A csv which has the contact.csv imported into the campaign.csv.
      * Query_Campaign_Table.csv - A csv which shows the queried "Campaign" table. 
      * Query_Category_Table.csv - A csv which shows the queried "Category" table.
      * Query_Contacts_Table.csv - A csv which shows the queried "Contacts" table.
      * Query_Subcategory_Table.csv - A csv which shows the queried "Subcategory" table.
      * Table_Queries.SQL- A SQL file which shows the queries used to generate the tables.
  * Resources - folder which contains resources need for import into the various code notebooks.
  * Images - folder which contains images for the project.
  * Files
      * .gitignore - file that dictates which files to upload to github. Ignores files with sensitive information or unnecessary files. 
      * ReadMe - instructions and summary of the project.

---
# Extract
  * Data was provided in the starter files for extraction.
  * Imports were from excel files into jupyter notebook.
  * Extractions were for the Campaign Dataframe and the Contact Dataframe.

---
# Transform
  * The first part of the transformation was to find the unique categories and subcategories and create a unique category and sub category ID. Data was then exported as a csv.
    <p align="left">
    <img src="https://github.com/tiascott01/13_GroupProject2_ETL/blob/main/Images/category.png" width="186", hspace="15">
    <img src="https://github.com/tiascott01/13_GroupProject2_ETL/blob/main/Images/subcategory.png" width="101">
    </p>
  * In the second part of the transformation a campaign dataframe was created with the following categories and exported as a csv:
       * "cf_id" column,
       * "contact_id" column,
       * “company_name” column, the "blurb" column (renamed as "description"),
       * "goal" column (converted to a float datatype),
       * "pledged" column (converted to a float datatype),
       * "backers_count" column, "country" column,
       * "currency" column,
       * "launched_at" column (renamed as "launch_date" and converted to a datetime format),
       * "deadline" column (renamed as "end_date" and converted to a datetime format),
       * "category_id" with the unique number matching the “category_id” from the category DataFrame,
       * and "subcategory_id" with the unique number matching the “subcategory_id” from the subcategory DataFrame.
    <p align="left">
    <img src="https://github.com/tiascott01/13_GroupProject2_ETL/blob/main/Images/campaign.png" width="654", hspace="15">
    <img src="https://github.com/tiascott01/13_GroupProject2_ETL/blob/main/Images/campaign_datatypes.png" width="157">
    </p>
## Option 1: Pandas Dataframe
  * In the third part of the transformation a contacts dataframe was created with pandas and exported as a csv: 
       * "contact_id" column,
       * "first_name" column,
       * “last_name” column, the "blurb" column (renamed as "description"),
       * and "email" column (converted to a float datatype).  
    <p align="left">
    <img src="https://github.com/tiascott01/13_GroupProject2_ETL/blob/main/Images/contact_dataframe_pandas1.png" width="487", hspace="15">
    <img src="https://github.com/tiascott01/13_GroupProject2_ETL/blob/main/Images/contact_dataframe_pandas2.png" width="325">
    </p>
## Option 2: Regex Dataframe
  * In the third part of the transformation a contacts dataframe was created with regex and exported as a csv: 
       * "contact_id" column,
       * "first_name" column,
       * “last_name” column, the "blurb" column (renamed as "description"),
       * and "email" column (converted to a float datatype).  
    <p align="left">
    <img src="https://github.com/tiascott01/13_GroupProject2_ETL/blob/main/Images/contact_dataframe_regex1.png" width="380", hspace="15">
    <img src="https://github.com/tiascott01/13_GroupProject2_ETL/blob/main/Images/contact_dataframe_regex2.png" width="533">
    </p>

---
# Load
  * The first part of loading the data was identifying which parts of the exported csv's can be joined together. 
  * the second part was to create an Entity Relationship Diagram which outlines the primary and foreign keys of joining various csv's together.
    <p align="left">
    <img src="https://github.com/tiascott01/13_GroupProject2_ETL/blob/main/crowdfunding_ERD.png" width="425", hspace="15">
    </p>
  * In the third part, a database was created and subsequently a schema and tables in PgAdmin4.
     * This schema includes steps to drop existing tables, create the tables as they would exist in the database, and then the altering of the tables to tie the tables together.
     * [Link to Schema](https://github.com/tiascott01/13_GroupProject2_ETL/blob/main/crowdfunding_db_schema.sql)
  * Finally, queries were run on the data in the database.
    <p align="left">
    <img src="https://github.com/tiascott01/13_GroupProject2_ETL/blob/main/Images/Query_Campaign_Table.PNG" width="850", hspace="15">
    </p>
    <p align="center">
    <img src="https://github.com/tiascott01/13_GroupProject2_ETL/blob/main/Images/Query_Category_Table.PNG" width="205", hspace="7">
    <img src="https://github.com/tiascott01/13_GroupProject2_ETL/blob/main/Images/Query_Subcategory_Table.PNG" width="125", hspace="7">
    <img src="https://github.com/tiascott01/13_GroupProject2_ETL/blob/main/Images/Query_Contacts_Table.PNG" width="305", hspace="7">
    </p>
    </br>
  * Aditionally, we created one joined database.
    <p align="left">
    <img src="https://github.com/tiascott01/13_GroupProject2_ETL/blob/main/Images/Query_Campaign_Contacts_Join_Table.PNG" width="850">
    </p>

    
---
## Results

In the 11_WebScraping_Challenge, the first dataset is an scraping from a mars website including title and preview text. The notebook appends data from the website into a more manageable list format which shows the lists in fill from the website. In the second file, another scraping from a separate website collects data about the temperature, date, pressure, and other weather conditions from the location of the Curiosity rover. The data chain continues importing the data and setting into a dataframe for further analysis and graphing. To make sure the data is calculated appropriately, several columns must adhere convert to specific datatypes and are changed to reflect the new type. Several graphs have been calculated against as well as an analysis after each graph answering varying questions about conditions on Mars. A final output of the data is saved in a csv file for future use.





## Resources and Citations

1. Project Partners - Tia Scott and Haylee McLean
   
2. General - ChatGpt.com
   
3. Office Hours, Unix timestamp conversion code - Antonio Laverghetta
