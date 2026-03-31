/*
Questoin 2
How many players are in each team?
*/

SELECT TeamID, COUNT(*) AS PlayerCount
FROM Players
GROUP BY TeamID;