-- Question #1

SELECT M.MovieID, M.Title
FROM Movie M
INNER JOIN MoviePlan MP ON M.MovieID = MP.MovieID
WHERE MP.MemPlan = 'T';

-- Question #2

SELECT M.MovieID, M.Title
FROM Movie M
INNER JOIN MoviePlan MP1 ON M.MovieID = MP1.MovieID
INNER JOIN MoviePlan MP2 ON M.MovieID = MP2.MovieID
WHERE MP1.MemPlan = 'T'
AND MP2.MemPlan = 'B';

-- Question #3

SELECT M.MovieID, M.Title
FROM Movie M
INNER JOIN MoviePlan MP ON M.MovieID = MP.MovieID
INNER JOIN MovieGenre MG ON M.MovieID = MG.MovieID
WHERE MP.MemPlan = 'S'
AND MG.GenreID IN (SELECT GenreID FROM Genre WHERE GenreName = 'Comedy')
AND MG.MovieID NOT IN (SELECT MovieID FROM MovieGenre WHERE GenreID IN (SELECT GenreID FROM Genre WHERE GenreName = 'Romance'));

-- Question #4

SELECT M.MovieID, M.Title
FROM Member MB
INNER JOIN Plan P ON MB.MemPlan = P.MemPlan
INNER JOIN MoviePlan MP ON P.MemPlan = MP.MemPlan
INNER JOIN Movie M ON MP.MovieID = M.MovieID
WHERE MB.MemID = '301103';