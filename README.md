# Pewlett-Hackard-Analysis

## Now that Bobby has proven his SQL skills, his manager has given the following assignments: 1) determine the number of retiring employees per title, and 2) identify employees who are eligible to participate in a mentorship program. Then, you’ll write a report that summarizes your analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.

## Deliverable One: The Number of Retiring Employees by Title
Firstly, A Retirement Titles table was generated using the code in Figure 1; that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955. 
![Figure 1 - retirement_titles_q_code](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/retirement_table.png?raw=true)

![Figure 2 - retirement_title_output](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/retirement_table_output.png?raw=true)

However; because some employees may have multiple titles in the database, (e.g. due to promotions) the DISTINCT ON statement was used to create a filtered table that contains the most recent title of each employee. 
![Figure 3 - unique_titles_q_code](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/unique_title_q_code.png?raw=true)

![Figure 4 - unique_titles_output](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/unique_title_output.png?raw=true)

Then the COUNT() function was used to create a final table that has the number of retirement-age employees by most recent job title.  This will give a realistic 'high level' output for management to understand the numbers of employees/titles that will be retiring and needing replacement.

![Figure 5 - retiring_titles_q_code](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/retireing_titles_q_code.png?raw=true) ![Figure 6 - retiring_titles_output](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/retireing_titles_output.png?raw=true)

This data shows us that:
- There are approximately 90,000 employees targeted to leave the company within seven departments.
- The largest job role targeted for retirement is Senior Engineer with 29,414 employees.
- The second largest job role is Senior Staff with 28,254 employees.
- These two roles account for 64% all retiring employees.

## Deliverable Two: The Employees Eligible for the Mentorship Program
Understanding the number of titles from Figure 6 that will be retiring looks substantial, not all future job openings will need to be sourced from outside of Pewlett-Hackard.  The company is going to develop and 'in-house' mentoring program to give current employees that are not retiring, the needed skills for business continuity. Using the ERD created in this module as a reference and knowledge of SQL queries, a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.
![Figure 7 - mentorship_elegibility_q_code](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eleigibility_q_code.png?raw=true)

![FIgure 8 - mentorship_elegibiltiy_output](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eleigibility_output.png?raw=true)

## Deliverable Three: High-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami." 
How many roles will need to be filled as the "silver tsunami" begins to make an impact?  To determine the overall impact of the retirees as a portion of the company workforce, it was necessary to compare the company now to what the company will be without the retirees.  A SQL query was used to calculate the number of current employees and sorted by department.  Figure 9 shows the query code and the output per department of total employees.  There are a total of 240,124 current employees at PH and a total of 72,428.
![Figure 9 - total_current_emp_q_and_output](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/total_current_emp_q_and_output.png?raw=true) 

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?  It is unknown the level of qualifications for backfilling each retiree, but query of retirees per department was used to show how many per department are due to be leaving in Figure 10.  The birth date of January 1, 1952 to December 31, 1955 was used to determine the count of the current employees per department the were born in that date range.
![Figure 10 - retiring_current_emp_q_and_output](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/retiring_current_emp_q_and_output.png?raw=true)

Microsoft excel was used to determine the percentage of retirees as the current workforce.  Estimates show that 30% of each department is going to be retiring.  This is opportunity for very quick promotions but if a continuity plan is not implemented and non-qualified individuals are promoted, it could devastate the future workflow.
![Figure 11 - excel_workforce](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/workforce.png?raw=true)

### One question is why the queries in Deliverable One showed 90,000+ retirement eligible employees but when the query was ran in deliverable three the total number of current employees was 72,428 retirement eligible...I could not find the distinction in my queries that would result in this discrepancy...

