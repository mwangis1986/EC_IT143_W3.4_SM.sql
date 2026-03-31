/*
Question 3
What positions are most common among players?

*/

SELECT Position, COUNT(*) AS CountPosition
FROM Players
GROUP BY Position
ORDER BY CountPosition DESC;