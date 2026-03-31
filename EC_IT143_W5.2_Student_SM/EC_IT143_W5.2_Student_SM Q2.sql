/*
Question 2
How many students are in each major
*/

SELECT Major, COUNT(*) AS CountMajor
FROM Students
GROUP BY Major;