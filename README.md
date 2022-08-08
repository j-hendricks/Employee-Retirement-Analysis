# Pewlett-Hackard-Analysis

## Overview

Pewlett Hackard is a company with thousands of employees, many of which are nearing the age of retirement. The company plans to provide a retirement package to eligible employees. The company must also prepare for thousands of employees leaving their positions within the next few years. To prepare for the future vacancies, we have been assigned to analyze employee data in order to determine: 1) the number of retiring employees by title 2) the employees eligible for the mentorship program. The company has provided several tables of employee data, including each employee's name, position, department and birth date. Using SQL, this data can be organized and filtered in order to complete these tasks.

## The Dataset

The data consists of six csv files. To visualize the structure of this data, an entity relationship diagram (ERD) was created, as seen below. The department number and employee number are the data that connect all of these tables to each other. 

![ERD](Images/EmployeeDB.png)

## Results

As seen in the table below, roughly 26,000 senior engineers and 25,000 senior staff are soon to retire. As a result, there should be a focus on hiring as many qualified engineers as possible and promote an qualified engineers to the senior engineer position. The same should be done for senior staff. There are also 2 managers near retiring, so 2 replacements need to be found as soon as possible, otherwise there will be a lack of leadership and guidance in the company.

![deliverable1](Images/deliverable1_Table.png)

In order to be eligible for the mentorship program, the employee must have been born between January 1, 1965 and December 31, 1965. As seen in the table below, we have the name of the employee, their date of birth, the dates of employment, and their most recent job title. The value "9999-01-01" serves as a placeholder for the final workday of current employees. 

![deliverable2](Images/deliverable2_Table.png)

The following conclusions are the main take-aways from these two tables:

* Most of the people leaving are either senior engineers or senior staff, which are higher level positions that require experience
* Two of the five active managers are retiring soon
* Table 2 contains 1,549 rows, meaning 1,549 people are eligible for the mentorship program
* Each job title has multiple employees that are eligible to act as mentors, except for managers, which have no eligible mentors

## Summary

From this analysis, it is evident that there are 25,916 senior engineers, 24,936 senior staff and 2 managers that are retiring, as well as thousands of engineers, staff and technique leaders. There are only 5 active managers for the nine departments in total, so losing 2 of them could result in a lack of leadership in the company. 

As for the mentorship program, there are 1,549 eligible mentors  (![see summary_queries.sql](Queries/summary_queries.sql). The table below shows the number of eligible mentors for each job title. The position of manager has no eligible employees, but all the other positions do. Comparing this table to the first table, each position has roughly 1 eligible mentor for every 100 employees leaving said position. If the mentorship program is to be successful, it may be desirable to relax the requirements for mentorship eligibility. 

![additional_info](Images/Additional_Info.png)




