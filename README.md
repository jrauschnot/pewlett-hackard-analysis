# Pewlett-Hackard-Analysis

# Project Overview:
An analysis of forward-looking data using PostgreSQL and pgAdmin to predict retirements by title and department. 

## Resources:

* Data Sources: 
    - departments.csv
    - dept_emp.csv
    - dept_manager.csv
    - employees.csv
    - salaries.csv 
    - titles.csv 

* Software: PostgreSQL, pgAdmin

## Results:

1) According to "Unique_titles.csv" file and using the count(), there are a total of 72,458 postions that are soon-to-retire over a 4-year period. 

<img width="751" alt="retirement_titles" src="https://user-images.githubusercontent.com/93015602/153572621-ed05da3d-353c-45f1-9739-32090bacd2e6.png">

2) According to "retiring_titles.csv", the Senior engineers(25916), Senior Staff(24926), and Engineers(9285) are the top 3 positions titles with the largest number of employees that are soon-to-retire.

<img width="568" alt="unique_titles" src="https://user-images.githubusercontent.com/93015602/153572648-2cf9505a-9703-4ff5-86fb-176ccae506cf.png">

<img width="243" alt="no_retiring_titles" src="https://user-images.githubusercontent.com/93015602/153572659-188a7f65-8e33-4740-a1f1-7183c6c78383.png">

3) According to "Mentorship_eligibility.csv", there are 1549 employees whom are eligible to become mentors for the mentorship program. 

<img width="834" alt="mentorship_eligibility" src="https://user-images.githubusercontent.com/93015602/153572677-b1c690c4-ebea-43b8-83e3-6fba7fd4bdfa.png">

4) Of the 1549 employees whom are eligible to become mentors, the top 3 titles include 409 Senior Staff, 376 Engineers, and 315 Staff.

<img width="243" alt="mentor_titles" src="https://user-images.githubusercontent.com/93015602/153573606-7d322192-cc2a-4fe1-8ef3-2bf2145846fc.png">


## Summary:

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?

* Based upon data from "Unique_titles.csv", if we assume that 72,458 positions are within the soon-to-retire range over a 4-year period, then it can be determined (on average) approximately 18,000 positions will need to be filled within 1 year and each year thereafter for the next 4 years. The average salary of the soon-to-retire position is approximately $52,896.

<img width="747" alt="salary" src="https://user-images.githubusercontent.com/93015602/153578428-eea5b59f-c247-43b3-8499-cde3092dcf8e.png">

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

* If 18,000 positions need to be filled each year for the next 4 years and we only have 1549 employees whom are eligible to become mentors, it can be suggested that there are NOT enough qualified, retirement-ready employees in the departments to mentor the next generation (approximately 12:1 new position-to-mentor ratio).  An effective training strategy would target a ratio of less than 10:1 in-order to provide enough attention for each new individual / mentee.  Furthermore, the cost savings from those individuals retiring may be used to supplement costs associated with the new mentorship program (ie. hire additional mentors as part-time). 

<img width="243" alt="mentor_titles" src="https://user-images.githubusercontent.com/93015602/153573606-7d322192-cc2a-4fe1-8ef3-2bf2145846fc.png">
