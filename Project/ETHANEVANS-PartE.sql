-- QUESTION #1

SELECT SUM(P.Cost) AS Total_Revenue
FROM Member M
INNER JOIN Plan P
ON M.MemPlan = P.MemPlan;

-- QUESTION #2

SELECT COUNT(MemPlan)
FROM Member
WHERE MemPlan = 'T';

-- QUESTION #3

SELECT P.Descrip AS Plan_Description, SUM(P.Cost) AS Total_Revenue
FROM Member M
JOIN Plan P
ON M.MemPlan = P.MemPlan
GROUP BY P.Descrip
ORDER BY P.Descrip ASC;

-- QUESTION #4

SELECT P.Descrip AS Plan_Description, SUM(P.Cost) AS Total_Revenue
FROM Member M
JOIN Plan P
ON M.MemPlan = P.MemPlan
WHERE M.Prov = 'NB'
GROUP BY P.Descrip
ORDER BY P.Descrip ASC;

-- QUESTION #5

SELECT P.Descrip AS Plan_Description, SUM(P.Cost) AS Total_Revenue
FROM Member M
JOIN Plan P
ON M.MemPlan = P.MemPlan
HAVING SUM(P.Cost) > 5000.00
GROUP BY P.Descrip
ORDER BY P.Descrip ASC;

-- QUESTION #6

SELECT CONCAT(CONCAT(M.LName, ', '), M.FName) 
AS "Member Name", M.City, P.Descrip AS "Plan Description"
FROM Member M
JOIN Plan P
ON M.MemPlan = P.MemPlan
WHERE M.Prov = 'ON' 
AND (P.Descrip = 'Premium' OR P.Descrip = 'Standard')
ORDER BY M.City DESC, M.LName ASC;
-- I updated 2 members on the meber table as it had 'Fredericton' prov set to 'ON' instead of 'NB'