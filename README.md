# 13_GroupProject2_ETL
## Project Summary

This repository contains a project which extracts, transforms, and loads crowdfunding data from two resource xlsx files (crowdfunding and contacts_uncleaned). The files were initially imported and analyzed the data using jupyter notebook. Each analysis was exported as a csv file and then combined into a SQL database using PGAdmin 4. The imported tables were queried using SQL in which code and csv files were exported into the queries folder. 

---
# GitHub File Navigation
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
## Extract
  * Data was provided in the starter files for extraction.
  * Imports were from excel files into jupyter notebook.
  * Extractions were for the Campaign Dataframe and the Contact Dataframe.

---
## Transform
  * The first part of the transformation was to find the unique categories and subcategories and create a unique category and sub category ID.
  * <p align="center">
    <img src="https://github.com/tiascott01/13_GroupProject2_ETL/blob/main/Images/category.png" width="150">
    <img src="https://github.com/tiascott01/13_GroupProject2_ETL/blob/main/Images/subcategory.png" width="150">
    </p>
  * In the second part of the transformation a campaign dataframe was created with:
       * "cf_id" column,
       * "contact_id" column,
       * “company_name” column, the "blurb" column (renamed as "description"),
       * "goal" column (converted to a `float` datatype),
       * "pledged" column (converted to a `float` datatype),
       * "backers_count" column, "country" column,
       * "currency" column,
       * "launched_at" column (renamed as "launch_date" and converted to a datetime format),
       * "deadline" column (renamed as "end_date" and converted to a datetime format),
       * "category_id" with the unique number matching the “category_id” from the category DataFrame.
       * "subcategory_id" with the unique number matching the “subcategory_id” from the subcategory DataFrame.
   * <campaign image> <Campaign dataype>

- And, create a column that contains the unique four-digit contact ID number from the `contact.xlsx` file.




## Results

In the 11_WebScraping_Challenge, the first dataset is an scraping from a mars website including title and preview text. The notebook appends data from the website into a more manageable list format which shows the lists in fill from the website. In the second file, another scraping from a separate website collects data about the temperature, date, pressure, and other weather conditions from the location of the Curiosity rover. The data chain continues importing the data and setting into a dataframe for further analysis and graphing. To make sure the data is calculated appropriately, several columns must adhere convert to specific datatypes and are changed to reflect the new type. Several graphs have been calculated against as well as an analysis after each graph answering varying questions about conditions on Mars. A final output of the data is saved in a csv file for future use.

## Usage

You can use this file to analyze the data in the corresponding notebook.

1. Open the respective file (`part_1_mars_news.ipynb') in Jupyter Notebook or VSCode.

2. Make sure that the resource and analysis directories are congruent within their respective places as listed in the script, if not change the location.
   
3. Cells requiring the dependencies such as BeautifulSoup and Selenium must be imported prior to use.

5. Run individual cells within the (`part_1_mars_news.ipynb') to see the calculations or breakdown by category.





You can use this file to analyze the data in the corresponding notebook.

1. Open the respective file (`part_2_mars_news.ipynb') in Jupyter Notebook or VSCode.

2. Make sure that the resource and analysis directories are congruent within their respective places as listed in the script, if not change the location.
   
3. Cells requiring the dependencies such as BeautifulSoup and Selenium must be imported prior to use.

5. Run individual cells within the (`part_2_mars_news.ipynb') to see the calculations, breakdown by category, or plots associated with this file.

7. Results will be exported from the notebook into the ('mars_data_export.csv') file.



## Resources and Citations

1. Project Partners - Tia Scott and Haylee McLean
2. General - ChatGpt.com
3. Office Hours, Unix timestamp conversion code - Antonio Laverghetta
