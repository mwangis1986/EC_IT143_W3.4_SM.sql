/*
Name Samuel Mwangi
Course: IT143
Assignment: 5.2 My communities Analysis
Question 1 by Lloyd Moono
How many players are in each team, and what teams do they belong to?
*/

SELECT*
FROM Players;
SELECT t.TeamName, COUNT(*) AS PlayerCount
FROM Players p
JOIN Team t ON p.TeamID = t.TeamID
GROUP BY t.TeamName;