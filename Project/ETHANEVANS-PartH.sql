-- Delete --
-- Question #1

DELETE FROM Member
WHERE MemPlan = 'T';

-- Question #2

DELETE FROM Member
WHERE Email LIKE '%@bigcartel.com'
OR Email LIKE '%@weibo.com';

-- Modify --
-- Question #1

UPDATE Member 
SET MemPlan = 'P'
WHERE Prov = 'NS'
AND MemPlan = 'S';

-- Question #2

UPDATE Member
SET MemPlan = 'S'
WHERE City = 'Fredericton'
AND Prov = 'NB'
AND MemPlan = 'B';

-- Question #3

UPDATE Member 
SET MemPlan = 'P'
WHERE MemID = '107825';
