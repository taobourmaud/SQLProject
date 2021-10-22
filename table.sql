CREATE TABLE Producer (
    ProducerId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
    ProducerLastName VARCHAR(80),
    ProducerFirstName VARCHAR(80),
    ProducerNationality VARCHAR(80)
);

CREATE TABLE Movie (
    MovieId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    MovieTitle VARCHAR(80),
    ReleaseDate DATE, 
    Duration INT,
    MovieType VARCHAR(80),
    ProducerId INT, 
    CONSTRAINT fk_movie_producer FOREIGN KEY (ProducerId) REFERENCES Producer(ProducerId)
);

CREATE TABLE Actor (
	ActorId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
	ActorLastName VARCHAR(80), 
	ActorFirstName VARCHAR(80), 
	ActorCountry VARCHAR(80),
	BirthDate DATE
);

CREATE TABLE Seance (
	SeanceId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	SeanceDate	DATE, 
	SeanceHour TIME, 
	Seance_categoryId INT, 
	MovieId INT,
	CONSTRAINT fk_SeanceCategory_Seance FOREIGN KEY (Seance_categoryId) REFERENCES Seance_category(Seance_categoryId) 	
);

CREATE TABLE Seance_category (
	Seance_categoryId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	SeanceType VARCHAR(80)
);


CREATE TABLE Seat_category (
	Seat_categoryId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	SeatType VARCHAR(80)
);

CREATE TABLE Seat (
	SeatId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
	Seat_categoryId INT, 
	CONSTRAINT fk_seat_seatCategory FOREIGN KEY (Seat_categoryId) REFERENCES Seat_category(Seat_categoryId) 
);

CREATE TABLE Role (
	MovieId INT, 
	ActorId INT, 
	RoleName VARCHAR(80),
	CONSTRAINT fk_movieId FOREIGN KEY (MovieId) REFERENCES Movie(MovieId),
	CONSTRAINT fk_actorId FOREIGN KEY (ActorId) REFERENCES Actor(ActorId),
	PRIMARY KEY (MovieId, ActorId) 
);

CREATE TABLE Booking (
	SeatId INT, 
	SeanceId INT, 
	SpectatorName VARCHAR(80), 
	CONSTRAINT fk_seatId FOREIGN KEY (SeatId) REFERENCES Seat(SeatId),
	CONSTRAINT fk_SeanceId FOREIGN KEY (SeanceId) REFERENCES Seance(SeanceId),
	PRIMARY KEY ( SeatId, SeanceId )
);

CREATE TABLE Price (
	Seance_categoryId INT, 
	Seat_categoryId INT, 
	Cost INT, 
	CONSTRAINT fk_seance_categoryId FOREIGN KEY (Seance_categoryId) REFERENCES Seance_category(Seance_categoryId),
	CONSTRAINT fk_seat_categoryId FOREIGN KEY (Seat_categoryId) REFERENCES Seat_category(Seat_categoryId),
	PRIMARY KEY (Seance_categoryId, Seat_categoryId)
)