/*
Question 4
Which team has the most players?
 */

SELECT TOP 1 TeamID, COUNT(*) AS PlayerCount
FROM Players
GROUP BY TeamID
ORDER BY PlayerCount DESC;