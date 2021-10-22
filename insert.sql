
-- Producer 

INSERT INTO Producer (ProducerLastName, ProducerFirstName, ProducerNationality) VALUES
('Fincher', 'David', 'American'),
('Tarantino', 'Quentin', 'American'),
('Nolan', 'Christopher', 'English'),
('Kubrick', 'Stanley', 'American'),
('Scott', 'Ridley', 'English'),
('Ford Coppola', 'Francis', 'American'),
('Zemeckis', 'Robert', 'American'),
('Jackson', 'Peter', 'New Zealand'),
('Leone', 'Sergio', 'Italian')
;
-- Movie

INSERT INTO Movie (MovieTitle, ReleaseDate, Duration, MovieType, ProducerId) VALUES 
('Fight Club', '10/09/1999', 8340, 'Drama', 1),
('Pulp Fiction', '10/09/1994', 9240, 'Gangster & comedie', 2), 
('Interstellar', '5/11/2014', 10140, 'S-F, drama & adventure', 3), 
('2001: A Space Odyssey', '3/04/1968', 9600, 'Adventure & S-F', 4), 
('Blade Runner', '25/06/1982', 7020, 'S-F & thriller', 5), 
('The Godfather', '24/03/1972', 10500, 'Detective & Drama', 6),
('Forrest Gump', '6/07/1994', 8520, 'Drama & romance', 7),
('The Lord of the Rings: The Return of the King', '1/12/2003', 12060, 'Action, adventure & fantasy', 8), 
('The Dark Knight', '16/07/2008', 9120, 'Action, detective & thriller', 3), 
('The Good, The Bad and The Ugly', '23/12/1966', 10740, 'Western & adventure', 9)
;
-- Actor 

INSERT INTO Actor (ActorLastName, ActorFirstName, ActorCountry, BirthDate) VALUES
('Pitt', 'Brad', 'American', '18/12/1963'),
('Norton', 'Edward', 'American', '18/08/1969'),
('Travolta', 'John', 'American', '18/02/1954'),
('L. Jackson', 'Samuel', 'American', '21/12/1948'),
('McConaughey', 'Matthew', 'American', '04/11/1969'),
('Hathaway', 'Anne', 'American', '12/11/1982'),
('Dullea', 'Keir', 'American', '30/05/1936'),
('Lockwood', 'Gary', 'American', '21/02/1937'),
('Ford', 'Harrison', 'American', '13/07/1942'),
('Young', 'Sean', 'American', '20/11/1959'),
('Pacino', 'Al', 'American', '25/04/1940'),
('De Niro', 'Robert', 'American', '17/08/1943'),
('Hanks', 'Tom', 'American', '09/07/1956'),
('Wright', 'Robin', 'American', '08/04/1966'),
('Wood', 'Elijah', 'American', '28/01/1981'),
('McKellen', 'Ian', 'English', '25/05/1939'),
('Bale', 'Christian', 'English', '30/01/1974'),
('Ledger', 'Heath', 'Australian', '04/04/1979'),
('Eastwood', 'Clint', 'American', '31/05/1930'),
('Wallach', 'Eli', 'American', '07/12/1915')
;
--Seance

INSERT INTO Seance ( SeanceDate, SeanceHour,Seance_categoryId ,MovieId)
VALUES 
('15/10/2021', '15:30:00', 1, 1),
('15/10/2021', '20:30:00', 3,1),


('15/10/2021', '12:00:00', 4,2),
('16/10/2021', '20:30:00', 5,2),


('20/10/2021', '10:20:00', 2,3),
('22/10/2021', '18:30:00', 4,3),


('17/10/2021', '20:30:00', 3,4),
('18/10/2021', '14:30:00', 2,4),

('18/10/2021', '12:00:00', 1,5),
('19/10/2021', '15:30:00', 1,5),

('15/10/2021', '14:30:00', 2,6),
('18/10/2021', '15:30:00', 3,6),


('19/10/2021', '21:30:00', 4,7),
('20/10/2021', '17:30:00', 1,7),


('20/10/2021', '15:30:00', 5,8),
('21/10/2021', '11:30:00', 3,8),

('15/10/2021', '12:30:00', 1,9),
('16/10/2021', '14:30:00', 2,9),

('16/10/2021', '20:30:00', 3,10),
('18/10/2021', '12:30:00', 4,10)
;
-- Seat_category

INSERT INTO Seat_category (SeatType) VALUES
('Full price'),
('Under 14'),
('Student'),
('Under 26'),
('Senior'),
('Handicapped')
;
-- Seance_category 
INSERT INTO Seance_category (SeanceType) 
VALUES 
('VF'),
('VOSTFR'),
('VO'),
('3D'),
('4DX')
;
-- Seat 
INSERT INTO
    Seat (Seat_categoryId)
VALUES
    ('1'),
    ('1'),('2'),('3'),('4'),('5'),('6'),('3'),('5'),('1')
;
 -- Price 
INSERT INTO Price (Seance_categoryId, Seat_categoryId, Cost) 
VALUES
('1', '1', '12'),
('1', '2', '10'),
('1', '3', '10'),
('1', '4', '14'),
('1', '5', '22'),

('2', '1', '7'),
('2', '2', '6'),
('2', '3', '6'),
('2', '4', '10'),
('2', '5', '18'),

('3', '1', '9'),
('3', '2', '8'),
('3', '3', '8'),
('3', '4', '12'),
('3', '5', '18'),

('4', '1', '10'),
('4', '2', '8'),
('4', '3', '8'),
('4', '4', '12'),
('4', '5', '18'),

('5', '1', '12'),
('5', '2', '9'),
('5', '3', '9'),
('5', '4', '15'),
('5', '5', '20'),

('6', '1', '10'),
('6', '2', '9'),
('6', '3', '9'),
('6', '4', '15'),
('6', '5', '20')
;

--Role 
INSERT INTO Role (MovieId, ActorId, RoleName) 
VALUES 
('1', '1', 'Tyler Durden'),
('1', '2', 'The narrator'),
('2', '3', 'Vincent Vega'),
('2', '4', 'Jules Winnfield'),
('3', '5', 'Joseph Cooper'),
('3', '6', 'Dr Amelia Brand'),
('4', '7', 'Dr David Bowman'),
('4', '8', 'Dr Frank Poole'),
('5', '9', 'Rick Deckard'),
('5', '10', 'Rachel'),
('6', '11', 'Michael Corleone'),
('6', '12', 'Vito Corleone'),
('7', '13', 'Forrest Gump'),
('7', '14', 'Jenny'),
('8', '15', 'Frodon Sacquet'),
('8', '16', 'Gandalf'),
('9', '17', 'Batman'),
('9', '18', 'Joker'),
('10', '19', 'Blondie'),
('10', '20', 'Tuco Benedicto')
;
--- Booking
INSERT INTO Booking (SeatId, SeanceId, SpectatorName) VALUES
('1', '1', 'Kanoé'),
('1', '2', 'Nekfeu'),
('1', '3', 'Jokair'),
('1', '4', 'Black M'),
('1', '5', 'MHD'),
('1', '6', 'PLK'),
('1', '7', 'PNL'),
('1', '8', 'Oboy'),
('1', '9', 'Laylow'),
('1', '10', 'Dadju'),
('1', '11', 'Luv Resval'),
('1', '12', 'Damso'),
('1', '13', 'Niska'),
('1', '14', 'Da uzi'),
('1', '15', 'Ninho'),
('1', '16', 'Jul'),
('1', '17', 'SCH'),
('1', '18', 'Naps'),
('1', '19', 'Dinos'),
('1', '20', 'Josman'),

('2', '1', 'Kanoé'),
('2', '2', 'Nekfeu'),
('2', '3', 'Jokair'),
('2', '4', 'Black M'),
('2', '5', 'MHD'),
('2', '6', 'PLK'),
('2', '7', 'PNL'),
('2', '8', 'Oboy'),
('2', '9', 'Laylow'),
('2', '10', 'Dadju'),
('2', '11', 'Luv Resval'),
('2', '12', 'Damso'),
('2', '13', 'Niska'),
('2', '14', 'Da uzi'),
('2', '15', 'Ninho'),
('2', '16', 'Jul'),
('2', '17', 'SCH'),
('2', '18', 'Naps'),
('2', '19', 'Dinos'),
('2', '20', 'Josman'),

('3', '1', 'Kanoé'),
('3', '2', 'Nekfeu'),
('3', '3', 'Jokair'),
('3', '4', 'Black M'),
('3', '5', 'MHD'),
('3', '6', 'PLK'),
('3', '7', 'PNL'),
('3', '8', 'Oboy'),
('3', '9', 'Laylow'),
('3', '10', 'Dadju'),
('3', '11', 'Luv Resval'),
('3', '12', 'Damso'),
('3', '13', 'Niska'),
('3', '14', 'Da uzi'),
('3', '15', 'Ninho'),
('3', '16', 'Jul'),
('3', '17', 'SCH'),
('3', '18', 'Naps'),
('3', '19', 'Dinos'),
('3', '20', 'Josman'),

('4', '1', 'Kanoé'),
('4', '2', 'Nekfeu'),
('4', '3', 'Jokair'),
('4', '4', 'Black M'),
('4', '5', 'MHD'),
('4', '6', 'PLK'),
('4', '7', 'PNL'),
('4', '8', 'Oboy'),
('4', '9', 'Laylow'),
('4', '10', 'Dadju'),
('4', '11', 'Luv Resval'),
('4', '12', 'Damso'),
('4', '13', 'Niska'),
('4', '14', 'Da uzi'),
('4', '15', 'Ninho'),
('4', '16', 'Jul'),
('4', '17', 'SCH'),
('4', '18', 'Naps'),
('4', '19', 'Dinos'),
('4', '20', 'Josman'),

('5', '1', 'Kanoé'),
('5', '2', 'Nekfeu'),
('5', '3', 'Jokair'),
('5', '4', 'Black M'),
('5', '5', 'MHD'),
('5', '6', 'PLK'),
('5', '7', 'PNL'),
('5', '8', 'Oboy'),
('5', '9', 'Laylow'),
('5', '10', 'Dadju'),
('5', '11', 'Luv Resval'),
('5', '12', 'Damso'),
('5', '13', 'Niska'),
('5', '14', 'Da uzi'),
('5', '15', 'Ninho'),
('5', '16', 'Jul'),
('5', '17', 'SCH'),
('5', '18', 'Naps'),
('5', '19', 'Dinos'),
('5', '20', 'Josman'),

('6', '1', 'Kanoé'),
('6', '2', 'Nekfeu'),
('6', '3', 'Jokair'),
('6', '4', 'Black M'),
('6', '5', 'MHD'),
('6', '6', 'PLK'),
('6', '7', 'PNL'),
('6', '8', 'Oboy'),
('6', '9', 'Laylow'),
('6', '10', 'Dadju'),
('6', '11', 'Luv Resval'),
('6', '12', 'Damso'),
('6', '13', 'Niska'),
('6', '14', 'Da uzi'),
('6', '15', 'Ninho'),
('6', '16', 'Jul'),
('6', '17', 'SCH'),
('6', '18', 'Naps'),
('6', '19', 'Dinos'),
('6', '20', 'Josman'),

('7', '1', 'Kanoé'),
('7', '2', 'Nekfeu'),
('7', '3', 'Jokair'),
('7', '4', 'Black M'),
('7', '5', 'MHD'),
('7', '6', 'PLK'),
('7', '7', 'PNL'),
('7', '8', 'Oboy'),
('7', '9', 'Laylow'),
('7', '10', 'Dadju'),
('7', '11', 'Luv Resval'),
('7', '12', 'Damso'),
('7', '13', 'Niska'),
('7', '14', 'Da uzi'),
('7', '15', 'Ninho'),
('7', '16', 'Jul'),
('7', '17', 'SCH'),
('7', '18', 'Naps'),
('7', '19', 'Dinos'),
('7', '20', 'Josman'),

('8', '1', 'Kanoé'),
('8', '2', 'Nekfeu'),
('8', '3', 'Jokair'),
('8', '4', 'Black M'),
('8', '5', 'MHD'),
('8', '6', 'PLK'),
('8', '7', 'PNL'),
('8', '8', 'Oboy'),
('8', '9', 'Laylow'),
('8', '10', 'Dadju'),
('8', '11', 'Luv Resval'),
('8', '12', 'Damso'),
('8', '13', 'Niska'),
('8', '14', 'Da uzi'),
('8', '15', 'Ninho'),
('8', '16', 'Jul'),
('8', '17', 'SCH'),
('8', '18', 'Naps'),
('8', '19', 'Dinos'),
('8', '20', 'Josman'),

('9', '1', 'Kanoé'),
('9', '2', 'Nekfeu'),
('9', '3', 'Jokair'),
('9', '4', 'Black M'),
('9', '5', 'MHD'),
('9', '6', 'PLK'),
('9', '7', 'PNL'),
('9', '8', 'Oboy'),
('9', '9', 'Laylow'),
('9', '10', 'Dadju'),
('9', '11', 'Luv Resval'),
('9', '12', 'Damso'),
('9', '13', 'Niska'),
('9', '14', 'Da uzi'),
('9', '15', 'Ninho'),
('9', '16', 'Jul'),
('9', '17', 'SCH'),
('9', '18', 'Naps'),
('9', '19', 'Dinos'),
('9', '20', 'Josman'),

('10', '1', 'Kanoé'),
('10', '2', 'Nekfeu'),
('10', '3', 'Jokair'),
('10', '4', 'Black M'),
('10', '5', 'MHD'),
('10', '6', 'PLK'),
('10', '7', 'PNL'),
('10', '8', 'Oboy'),
('10', '9', 'Laylow'),
('10', '10', 'Dadju'),
('10', '11', 'Luv Resval'),
('10', '12', 'Damso'),
('10', '13', 'Niska'),
('10', '14', 'Da uzi'),
('10', '15', 'Ninho'),
('10', '16', 'Jul'),
('10', '17', 'SCH'),
('10', '18', 'Naps'),
('10', '19', 'Dinos'),
('10', '20', 'Josman') 