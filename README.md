# Project 2

By Monse Hernandez and Karla Flores

For the ETL mini project, you will work with a partner to practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. 
After you transform the data, you'll create four CSV files and use the CSV file data to create an ERD and a table schema. 
Finally, you’ll upload the CSV file data into a Postgres database.

## Instructions

The instructions for this mini-project are divided into the following subsections:

- Create the Category and Subcategory DataFrames
- Create the Campaign DataFrame
- Create the Contacts DataFrame
- Create the Crowdfunding Database

## Create the Category and Subcategory DataFrames

1. Extract and transform the ``crowdfunding.xlsx`` Excel data to create a category DataFrame that has the following columns:
   * A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
   * A "category" column that contains only the category titles
   * The following image shows this category DataFrame:

     ![image](https://github.com/user-attachments/assets/a05839cd-115a-494f-b03d-5d9389579b7d)

2. Export the category DataFrame as ``category.csv`` and save it to your GitHub repository.
   
3. Extract and transform the ``crowdfunding.xlsx`` Excel data to create a subcategory DataFrame that has the following columns:
   * A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
   * A "subcategory" column that contains only the subcategory titles
   * The following image shows this subcategory DataFrame:
  
     ![image](https://github.com/user-attachments/assets/7d5780c5-fb31-4822-8f40-1cdc4286bc3b)

4. Export the subcategory DataFrame as ``subcategory.csv`` and save it to your GitHub repository.

## Create the Campaign DataFrame

### 1. Extract and transform the ``crowdfunding.xlsx`` Excel data to create a campaign DataFrame has the following columns:

* The "cf_id" column
* The "contact_id" column
* The "company_name" column
* The "blurb" column, renamed to "description"
* The "goal" column, converted to the float data type
* The "pledged" column, converted to the float data type
* The "outcome" column
* The "backers_count" column
* The "country" column
* The "currency" column
* The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
* The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
* The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
* The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
* The following image shows this campaign DataFrame:

![image](https://github.com/user-attachments/assets/789585ef-e6c0-446e-b3fc-60f983b8a28f)


### 2. Export the campaign DataFrame as campaign.csv and save it to your GitHub repository


## Create the Contacts DataFrame

Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:

* Option 1: Use Python dictionary methods.

If you chose Option 1, complete the following steps:

1. Import the contacts.xlsx file into a DataFrame.
2. Iterate through the DataFrame, converting each row to a dictionary.
3. Iterate through each dictionary, doing the following:
4. Extract the dictionary values from the keys by using a Python list comprehension.
5. Add the values for each row to a new list.
6. Create a new DataFrame that contains the extracted data.
7. Split each "name" column value into a first and last name, and place each in a new column.
8. Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.


![image](https://github.com/user-attachments/assets/b9ace730-d8d4-460e-8502-6fa3e92e469f)


## Create the Crowdfunding Database

1. Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site.
 
2. Use the information from the ERD to create a table schema for each CSV file.
   Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.

4. Save the database schema as a Postgres file named ``crowdfunding_db_schema.sql``, and save it to your GitHub repository.

5. Create a new Postgres database, named ``crowdfunding_db``.

6. Using the database schema, create the tables in the correct order to handle the foreign keys.

7. Verify the table creation by running a ``SELECT`` statement for each table.
   
8. Import each CSV file into its corresponding SQL table.

9. Verify that each table has the correct data by running a ``SELECT`` statement for each.

Category:

![image](https://github.com/user-attachments/assets/bcfb02b9-76e8-486f-ad3a-426dd6463d45)

Subcategory:

![image](https://github.com/user-attachments/assets/b58d198f-ab9c-4cb6-8978-b1034b4806dd)

Contacts:

![image](https://github.com/user-attachments/assets/52de2340-334b-4e31-a59b-4714366f5ecf)

Campaign

![image](https://github.com/user-attachments/assets/a21b1f12-ad0d-415e-84dd-1862a42c6616)


