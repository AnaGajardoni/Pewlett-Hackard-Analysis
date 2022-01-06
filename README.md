# Pewlett-Hackard-Analysis
Analysis on Employee Database using SQL

## Overview

Pewllet-Hackard (PH) is a large company with several thousand employees - many of those are baby-boomers who are currently about to retire, which could cause a massive problem. The company intends to tackle the issue in two ways:
- Offering retirement packages for those who meet certain criteria;
- Figuring out which positions will need to be filled in the upcoming years.

Bobby is an HR analyst who works at Pewllet-Hackard's and whose task is to perform employee research. 

Given how critical the current situation is, Bobby is tasked to find out:
- ***Who will be retiring in the next few years?***
- ***How many positions will PH have to fill?***

Pewllet-Hackard has not taken data seriously up to this point and still manages their employees' information in CSV files. They finally decided it was time to convert it to a solution that would allow more scalability, therefore a SQL-database was brought into scene.

Bobby has six CSV files (listed below), which should be converted to tables in a relational database making the queries he needs a lot easier and clearer. The idea was to reflect what a relational model would look like, thus, the need to create a neat database with primary and foreign keys, making all the relationships clear.
- departments.csv
- dept_emp.csv
- dept_manager.csv
- employees.csv
- salaries.csv
- titles.csv

## Results
### Number of Retiring Employees by Title
In the first query of the analysis, we aimed to find the number of retiring employees by title. In order to find that, we made a query joining the employees and titles tables and filtered on birth_date. The results are shown below.

![Retirement_Titles](/data/retirement_titles.csv)

This query proved not to be good for our purpose. It is easily seen in the first records that it returns duplicates and we need unique records.

## Summary
