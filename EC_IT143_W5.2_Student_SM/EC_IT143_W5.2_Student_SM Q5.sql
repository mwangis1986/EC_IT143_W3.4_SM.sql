/*
Question 5
Which majors have more than one student?
*/

SELECT Major, COUNT(*) AS CountMajor
FROM Students
GROUP BY Major
HAVING COUNT(*) >1;
