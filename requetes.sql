-- 1 
SELECT DISTINCT SeanceDate FROM Seance
INNER JOIN Movie ON Seance.MovieId = Seance.MovieId
WHERE Seance.MovieId = (
    SELECT Role.MovieId FROM Role
    INNER JOIN Movie on Role.MovieId = Movie.MovieId
    WHERE Role.ActorId = '1'
)

-- 2 


-- 3



-- 4 

SELECT SeanceDate, SeanceHour FROM Seance 
WHERE MovieId = 7 
ORDER BY SeanceDate DESC , SeanceHour ASC

-- 5 

SELECT COUNT(*) AS NbActor FROM Actor