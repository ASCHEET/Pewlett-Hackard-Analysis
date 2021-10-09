# Pewlett-Hackard-Analysis

## Now that Bobby has proven his SQL skills, his manager has given the following assignments: 1) determine the number of retiring employees per title, and 2) identify employees who are eligible to participate in a mentorship program. Then, you’ll write a report that summarizes your analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.

## Deliverable One: The Number of Retiring Employees by Title
### Firstly, A Retirement Titles table was generated using the code in Figure 1; that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955. 
### ![Figure 1 - retirement_titles_q_code](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/retireing_titles_q_code.png?raw=true)
### ![Figure 2 - retirement_title_output](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/retirement_table_output.png?raw=true)
### However; because some employees may have multiple titles in the database, (e.g. due to promotions) the DISTINCT ON statement was used to create a filtered table that contains the most recent title of each employee. 
### ![Figure 3 - unique_titles_q_code](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/unique_title_q_code.png?raw=true)
### ![Figure 4 - unique_titles_output](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/unique_title_output.png?raw=true)
### Then the COUNT() function was used to create a final table that has the number of retirement-age employees by most recent job title.  This will give a realistic 'high leve' output for managemnt to understand the numbers of employees/titles that will be retiring and needing replacement.
### ![Figure 5 - retiring_titles_q_code](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/retireing_titles_q_code.png?raw=true)
### ![Figure 6 - retiring_titles_output](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/retireing_titles_output.png?raw=true)

## Deliverable Two: The Employees Eligible for the Mentorship Program
### Understsanding the number of titles from Figure 6 that will be retiring looks substancial, not all future job openings will need to be sourced from outside of Pewlett-Hackard.  The company is going to develop and 'in-house' mentoring programe to give current employees that are not retiring, the needed skills for business continuity. Using the ERD created in this module as a reference and knowledge of SQL queries, a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.
### ![Figure 7 - mentorship_elegibility_q_code](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eleigibility_q_code.png?raw=true)
### ![FIgure 8 - mentorship_elegibiltiy_output](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eleigibility_output.png?raw=true)

## Deliverable Three: High-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami." 
### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
### ![Figure 9 - total_current_emp_q_and_output](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/total_current_emp_q_and_output.png?raw=true) 
### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
### ![Figure 10 - retiring_current_emp_q_and_output](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/retiring_current_emp_q_and_output.png?raw=true)
### ![Figure 11 - excel_workforce](https://github.com/ASCHEET/Pewlett-Hackard-Analysis/blob/main/Data/workforce.png?raw=true)












