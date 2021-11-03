-- 1 
SELECT DISTINCT SeanceDate FROM Seance
INNER JOIN Movie ON Seance.MovieId = Seance.MovieId
WHERE Seance.MovieId = (
    SELECT Role.MovieId FROM Role
    INNER JOIN Movie on Role.MovieId = Movie.MovieId
    WHERE Role.ActorId = '1'
)

-- 2 

SELECT DISTINCT MovieTitle, Cost, SeanceHour FROM Movie

INNER JOIN Seance ON Movie.MovieId = Seance.MovieId
INNER JOIN Seance_category ON Seance_category.Seance_categoryId = Seance.SeanceId
INNER JOIN Price ON Price.Seance_categoryId = Seance_category.Seance_categoryId

WHERE
    Cost < 10
    AND Seance.SeanceHour > '18:00:00'

-- 3

SELECT RoleName FROM Role 
WHERE Role.ActorId = '4'
ORDER BY RoleName ASC


-- 4 

SELECT SeanceDate, SeanceHour FROM Seance 
WHERE MovieId = 7 
ORDER BY SeanceDate DESC , SeanceHour ASC

-- 5 

SELECT COUNT(*) AS NbActor FROM Actor

-- 6 

SELECT MovieTitle AS Movie FROM Movie
INNER JOIN Seance ON Movie.MovieId = Seance.MovieId 
GROUP BY MovieTitle 
HAVING COUNT(*) = 2

-- 7 
--- Celle qui marche 

SELECT Producer.ProducerFirstName || ' ' || Producer.ProducerLastName AS Producer FROM Producer
INNER JOIN Movie ON Producer.ProducerId = Movie.ProducerId
INNER JOIN Role ON Movie.MovieId = Role.MovieId
INNER JOIN Actor ON Role.ActorId = Actor.ActorId 
WHERE Actor.ActorLastName = 'Pitt'

--- Celle qui marche pas

SELECT Producer.ProducerFirstName || ' ' || Producer.ProducerLastName AS Producer FROM Producer
WHERE Producer.ProducerId = (
    SELECT Movie.ProducerId FROM Movie
    WHERE Movie.MovieId = (
        SELECT Role.MovieId FROM Role
        WHERE Role.ActorId = (
            SELECT Actor.ActorId FROM Actor 
            WHERE ActorLastName = 'Pitt'
            )
        )
    )
GROUP BY Producer.ProducerId

-- 8

SELECT DISTINCT ActorFirstName || ' ' || ActorLastName AS Actor, COUNT(Role.MovieId) AS NbRole FROM Actor
LEFT JOIN Role ON Actor.ActorId = Role.ActorId
GROUP BY Actor.ActorId
ORDER BY NbRole DESC

-- 9

CREATE VIEW MoviePerActor AS
SELECT Actor.ActorFirstName || ' ' || Actor.ActorLastName AS Actor, COUNT(Seance.SeanceId) AS NbOfMovies FROM Actor
INNER JOIN Role ON Actor.ActorId = Role.ActorId
INNER JOIN Movie ON Role.MovieId = Movie.MovieId
INNER JOIN Seance ON Movie.MovieId = Seance.MovieId
GROUP BY Actor
;

SELECT * FROM MoviePerActor

-- 10

CREATE TRIGGER reserve
INSERT ON Seat_category
FOR EACH ROW 
WHEN ( new.SeatId = '1')
BEGIN 	
	UPDATE Seat
	SET SeatType = "Special"
	WHERE SeatId = '1';
END

