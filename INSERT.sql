USE SOCCER_LEAGUE_DB;

-- Insert Statements for PremierLeague
INSERT INTO PremierLeague(Team_id, Team_Name, Matches_Played, Won, Drawn, 
Lost, Points, Stadium_ID, Manager_ID, Trophies_Won, Number_of_Players)
 VALUES(1, 'Manchester United', 38, 20, 9, 9, 69, 1, 1, 20, 11);
 
INSERT INTO PremierLeague(Team_id, Team_Name, Matches_Played, Won, Drawn, 
Lost, Points, Stadium_ID, Manager_ID, Trophies_Won, Number_of_Players)
 VALUES(2, 'Liverpool', 38, 20, 9, 9, 69, 2, 2, 19, 11);
 
INSERT INTO PremierLeague(Team_id, Team_Name, Matches_Played, Won, Drawn,
 Lost, Points, Stadium_ID, Manager_ID, Trophies_Won, Number_of_Players)
 VALUES(3, 'Manchester City', 38, 23, 5, 10, 74, 3, 3, 8, 11);

-- Insert Statements for PlayerPosition
INSERT INTO Player_PositionTable (Position_id, Position_description, Position_Name)
VALUES (0, 'GK', 'Goalkeeper'),
       (1, 'DF', 'Defender'),
       (2, 'DF', 'Defender'),
       (3, 'DF', 'Defender'),
       (4, 'MF', 'Midfielder'),
       (5, 'MF', 'Midfielder'),
       (8, 'MF', 'Midfielder'),
       (9, 'FW', 'Forward'),
       (10, 'FW', 'Forward');
       
       
-- Insert statements for VenueTable:
INSERT INTO VenueTable(Stadium_id, Stadium_Name, Audience_Capacity) VALUES(1, 'Old Trafford', 75000);
INSERT INTO VenueTable(Stadium_id, Stadium_Name, Audience_Capacity) VALUES(2, 'Anfield', 54074);
INSERT INTO VenueTable(Stadium_id, Stadium_Name, Audience_Capacity) VALUES(3, 'Etihad Stadium', 55017);

-- Insert Statements for RefereeTable:
INSERT INTO RefereeTable(Referee_id, Referee_Name, Matches_Officiated, 
Fouls_PG, Pens_PG) VALUES(1, 'Michael Oliver', 20, 22, 5);

INSERT INTO RefereeTable(Referee_id, Referee_Name, Matches_Officiated,
 Fouls_PG, Pens_PG) VALUES(2, 'Anthony Taylor', 15, 21, 4);
 
INSERT INTO RefereeTable(Referee_id, Referee_Name, Matches_Officiated, 
Fouls_PG, Pens_PG) VALUES(3, 'Mike Dean', 10, 23, 2);

-- Insert Statements for ManagerTable
INSERT INTO ManagerTable(Manager_id, Manager_Name, Team_id, Years_Worked, Salary)
VALUES
(1, 'Ole Gunnar Solskjaer', 1, 3, 500000), 
(2, 'Jurgen Klopp', 2, 6, 750000), 
(3, 'Pep Guardiola', 3, 5, 800000);

-- Insert statements for PlayerTable:
-- Manchester United players
INSERT INTO PlayerTable(Player_id, Player_Name, Position_id, Team_id, Matches_Played, Jersey_Number, Age, Height_cms, Weight_Kgs, Goal_to_Game)
VALUES(1, 'David de Gea', 0, 1, 38, 1, 31, 193, 76, 0),
      (2, 'Aaron Wan-Bissaka', 1, 1, 35, 29, 24, 183, 72, 0),
      (3, 'Victor Lindelof', 2, 1, 30, 2, 27, 187, 77, 0),
      (4, 'Harry Maguire', 3, 1, 34, 5, 28, 194, 100, 0),
      (5, 'Luke Shaw', 1, 1, 36, 23, 26, 184, 75, 1),
      (6, 'Fred', 4, 1, 29, 17, 28, 169, 64, 2),
      (7, 'Scott McTominay', 4, 1, 34, 39, 24, 193, 92, 2),
      (8, 'Bruno Fernandes', 4, 1, 37, 18, 27, 179, 69, 0.5),
      (9, 'Marcus Rashford', 9, 1, 37, 10, 24, 186, 71, 0.5),
      (10, 'Mason Greenwood', 9, 1, 37, 11, 19, 181, 76, 0.5),
      (11, 'Edinson Cavani', 9, 1, 26, 7, 34, 184, 73, 0.6);



-- Liverpool players
INSERT INTO PlayerTable(Player_id, Player_Name, Position_id, Team_id, Matches_Played, Jersey_Number, Age, Height_cms, Weight_Kgs, Goal_to_Game)
VALUES(12, 'Alisson Becker', 0, 2, 36, 1, 29, 193, 91, 0),
      (13, 'Trent Alexander Arnold', 1, 2, 34, 66, 23, 175, 69, 0),
      (14, 'Joel Matip', 2, 2, 19, 32, 29, 195, 90, 0),
      (15, 'Virgil van Dijk', 3, 2, 5, 4, 30, 193, 92, 0),
      (16, 'Andy Robertson', 1, 2, 36, 26, 27, 178, 67, 1),
      (17, 'Fabinho', 4, 2, 27, 3, 27, 188, 78, 0.5),
      (18, 'Jordan Henderson', 4, 2, 28, 14, 31, 182, 67, 0.5),
      (19, 'Georginio Wijnaldum', 4, 2, 36, 5, 30, 175, 69, 0.2),
      (20, 'Thiago Alcantara', 4, 2, 24, 6, 30, 174, 70, 0),
      (21, 'Sadio Mane', 9, 2, 36, 10, 29, 175, 69, 0.4),
      (22, 'Roberto Firmino', 10, 2, 36, 9, 29, 181, 76, 0.3),
      (23, 'Mohamed Salah', 10, 2, 38, 11, 29, 175, 71, 0.5),
      (24, 'Diogo Jota', 9, 2, 12, 20, 24, 178, 73, 0.6),
      (25, 'Naby Keita', 4, 2, 12, 8, 26, 172, 64, 0);
      
      -- Manchester City players
INSERT INTO PlayerTable(Player_id, Player_Name, Position_id, Team_id, Matches_Played, Jersey_Number, Age, Height_cms, Weight_Kgs, Goal_to_Game)
VALUES(26, 'Ederson', 0, 3, 36, 31, 27, 188, 86, 0),
      (27, 'Kyle Walker', 1, 3, 32, 2, 31, 183, 70, 0),
      (28, 'Ruben Dias', 2, 3, 32, 3, 24, 187, 75, 0),
      (29, 'John Stones', 3, 3, 28, 5, 27, 188, 70, 0),
      (30, 'Joao Cancelo', 1, 3, 30, 27, 26, 182, 74, 0.1),
      (31, 'Rodri', 4, 3, 34, 16, 24, 191, 82, 0.3),
      (32, 'Ilkay Gundogan', 4, 3, 28, 8, 30, 180, 78, 0.5),
      (33, 'Kevin De Bruyne', 4, 3, 25, 17, 30, 181, 68, 0.4),
      (34, 'Raheem Sterling', 10, 3, 35, 7, 26, 170, 69, 0.4),
      (35, 'Phil Foden', 5, 3, 28, 47, 21, 171, 69, 0.4),
      (36, 'Gabriel Jesus', 9, 3, 29, 9, 24, 175, 73, 0.3);

-- Insert statements for ContractTable
INSERT INTO ContractTable (Contract_id, Player_id, Contract_StartDate, Contract_EndDate, Salary)
VALUES 
(1, 1, '2022-05-01', '2025-04-30', 50000),
(2, 2, '2022-04-01', '2025-04-30', 150000),
(3, 3, '2022-03-01', '2025-04-30', 350000),
(4, 4, '2022-02-01', '2025-04-30', 60000),
(5, 5, '2022-01-01', '2025-04-30', 150000),
(6, 6, '2022-06-01', '2025-04-30', 350000),
(7, 7, '2022-07-01', '2025-04-30', 450000),
(8, 8, '2022-03-01', '2025-04-30', 150000),
(9, 9, '2022-02-01', '2025-04-30',  50000),
(10, 10, '2022-04-01', '2025-04-30', 57000),
(11, 11, '2022-05-02', '2025-04-30', 750000),
(12, 12, '2022-05-03', '2025-04-30', 240000),
(13, 13, '2022-05-04', '2025-04-30', 220000),
(14, 14, '2022-05-05', '2025-04-30', 270000),
(15, 15, '2022-05-06', '2025-04-30', 280000),
(16, 16, '2022-05-07', '2025-04-30', 290000),
(17, 17, '2022-05-08', '2025-04-30', 300000),
(18, 18, '2022-05-09', '2025-04-30', 231000),
(19, 19, '2022-05-10', '2025-04-30', 22000),
(20, 20, '2022-05-11', '2025-04-30', 420000),
(21, 21, '2022-05-12', '2025-04-30', 43000),
(22, 22, '2022-05-13', '2025-04-30', 340000),
(23, 23, '2022-05-14', '2025-04-30', 310000),
(24, 24, '2022-05-07', '2025-04-30', 52000),
(25, 25, '2022-06-01', '2025-04-30', 280000),
(26, 26, '2022-07-04', '2025-04-30', 290000),
(27, 27, '2022-04-01', '2025-04-30', 270000),
(28, 28, '2022-05-06', '2025-04-30', 280000),
(29, 29, '2022-05-07', '2025-04-30', 290000),
(30, 30, '2022-03-09', '2025-04-30', 200000),
(31, 31, '2022-05-04', '2025-04-30', 210000),
(32, 32, '2022-05-03', '2025-04-30', 220000),
(33, 33, '2022-05-02', '2025-04-30', 230000),
(34, 34, '2022-05-11', '2025-04-30', 240000),
(35, 35, '2022-05-01', '2025-04-30', 260000),
(36, 36, '2022-05-02', '2025-04-30', 257000);

SELECT * FROM ContractTable;

DELETE FROM ContractTable;

-- Insert statements for MatchTable
INSERT INTO MatchTable (Match_id, Winner_Team_id, Referee_id, Loser_Team_Id, Match_Date, Stadium_id, Man_Of_The_Match)
VALUES
  (1, 1, 1, 2, '2022-02-20', 1, 8),
  (2, 3, 3, 2, '2022-03-06', 3, 12),
  (3, 2, 1, 3, '2022-04-02', 2, 13);
  
-- MatchPlayedTable 

INSERT INTO MatchPlayedTable (PlayerMatch_id, Player_id, Match_id)
VALUES 
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 12, 2),
(27, 13, 2),
(28, 14, 2),
(29, 15, 2),
(30, 16, 2),
(31, 17, 2),
(32, 18, 2),
(33, 19, 2),
(34, 20, 2),
(35, 21, 2),
(36, 22, 2),
(37, 23, 2),
(38, 24, 2),
(39, 25, 2),
(40, 26, 2),
(41, 27, 2),
(42, 28, 2),
(43, 29, 2),
(44, 30, 2),
(45, 31, 2),
(46, 32, 2),
(47, 33, 2),
(48, 34, 2),
(49, 35, 2),
(50, 36, 2),
(51, 12, 3),
(52, 13, 3),
(53, 14, 3),
(54, 15, 3),
(55, 16, 3),
(56, 17, 3),
(57, 18, 3),
(58, 19, 3),
(59, 20, 3),
(60, 21, 3),
(61, 22, 3),
(62, 23, 3),
(63, 24, 3),
(64, 25, 3),
(65, 26, 3),
(66, 27, 3),
(67, 28, 3),
(68, 29, 3),
(69, 30, 3),
(70, 31, 3),
(71, 32, 3),
(72, 33, 3),
(73, 34, 3),
(74, 35, 3),
(75, 36, 3);


-- Player_Statistics table
INSERT INTO Player_Statistics (Stat_id, Match_Id, Player_Id, Goals_Scored, Assists_Given, Minutes_Played, Goal_To_Minute, SAVES, Clean_Sheets, Red_Cards, Yellow_Cards)
VALUES 
(1, 1, 1, 1, 0, 90, 1, 0, 1, 0, 0),
(2, 1, 2, 0, 0, 90, 0, 0, 0, 0, 1),
(3, 1, 3, 0, 1, 90, 0, 0, 0, 0, 0),
(4, 1, 4, 0, 0, 90, 0, 0, 0, 0, 0),
(5, 1, 5, 0, 0, 90, 0, 0, 0, 0, 0),
(6, 1, 6, 0, 0, 90, 0, 0, 0, 0, 0),
(7, 1, 7, 0, 0, 90, 0, 0, 0, 0, 0),
(8, 1, 8, 0, 0, 90, 0, 0, 0, 0, 0),
(9, 1, 9, 0, 0, 90, 0, 0, 0, 0, 0),
(10, 1, 10, 0, 0, 90, 0, 0, 0, 0, 0),
(11, 1, 11, 0, 0, 90, 0, 0, 0, 0, 0),
(12, 1, 12, 0, 0, 90, 0, 0, 0, 0, 0),
(13, 1, 13, 0, 0, 90, 0, 0, 0, 0, 0),
(14, 1, 14, 0, 0, 90, 0, 0, 0, 0, 0),
(15, 1, 14, 0, 0, 90, 0, 0, 0, 0, 0),
(16, 1, 16, 0, 0, 90, 0, 0, 0, 0, 0),
(17, 1, 17, 0, 0, 90, 0, 0, 0, 0, 0),
(18, 1, 18, 0, 0, 90, 0, 0, 0, 0, 0),
(19, 1, 19, 0, 0, 90, 0, 0, 0, 0, 0),
(20, 1, 20, 0, 0, 90, 0, 0, 0, 0, 0),
(21, 1, 21, 0, 0, 90, 0, 0, 0, 0, 0),
(22, 1, 22, 0, 0, 90, 0, 0, 0, 0, 0),
(23, 1, 23, 0, 0, 00, 0, 0, 0, 0, 0),
(24, 1, 24, 0, 0, 00, 0, 0, 0, 0, 0),
(25, 1, 25, 0, 0, 00, 0, 0, 0, 0, 0),
(26, 2, 26, 0, 0, 90, 0, 0, 0, 0, 0),
(27, 2, 27, 0, 0, 90, 0, 0, 0, 0, 0),
(28, 2, 28, 0, 0, 90, 0, 0, 0, 0, 0),
(29, 2, 29, 0, 0, 90, 0, 0, 0, 0, 0),
(30, 2, 30, 0, 0, 90, 0, 0, 0, 0, 0),
(31, 2, 31, 0, 0, 90, 0, 0, 0, 0, 0),
(32, 2, 32, 1, 0, 90, 0, 0, 0, 0, 0),
(33, 2, 33, 0, 0, 90, 0, 0, 0, 0, 0),
(34, 2, 34, 0, 0, 90, 0, 0, 0, 0, 0),
(35, 2, 35, 0, 0, 90, 0, 0, 0, 0, 0),
(36, 2, 36, 0, 1, 90, 0, 0, 0, 0, 0),
(37, 2, 25, 0, 0, 90, 0, 0, 0, 0, 0),
(38, 2, 24, 0, 0, 90, 0, 0, 0, 0, 0),
(39, 2, 23, 0, 0, 90, 0, 0, 0, 0, 0),
(40, 2, 22, 0, 0, 90, 0, 0, 0, 0, 0),
(41, 2, 21, 0, 0, 90, 0, 0, 0, 0, 0),
(42, 2, 20, 0, 0, 90, 0, 0, 0, 0, 0),
(43, 2, 19, 0, 0, 90, 0, 0, 0, 0, 0),
(44, 2, 18, 0, 0, 90, 0, 0, 0, 0, 0),
(45, 2, 17, 0, 0, 90, 0, 0, 0, 0, 0),
(46, 2, 16, 0, 0, 90, 0, 0, 0, 0, 0),
(47, 2, 15, 0, 0, 90, 0, 0, 0, 0, 0),
(48, 2, 14, 0, 0, 90, 0, 0, 0, 0, 0);









  
  

  

