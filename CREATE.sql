CREATE DATABASE SOCCER_LEAGUE_DB;

USE SOCCER_LEAGUE_DB;

CREATE Table PremierLeague(
  Team_id INT,
  Team_Name Varchar (20),
  Matches_Played INT, 
  Won INT,
  Drawn INT,
  Lost INT,
  Points INT,
  Stadium_ID INT,
  Manager_ID INT,
  Trophies_Won INT,
  Number_of_Players INT
);



CREATE Table Player_PositionTable(
  Position_id INT PRIMARY KEY,
  Position_description Varchar (2), 
  Position_Name Varchar(20)
);

CREATE Table VenueTable(
  Stadium_id INT,
  Stadium_Name Varchar (20), 
  Audience_Capacity INT
);

CREATE Table RefereeTable(
  Referee_id INT,
  Referee_Name Varchar (20), 
  Matches_Officiated INT,
  Fouls_PG INT,
  Pens_PG INT
);

CREATE Table ManagerTable(
  Manager_id INT,
  Manager_Name Varchar (20), 
  Team_id INT,
  Years_Worked INT,
  Salary INT
);

CREATE Table PlayerTable(
  Player_id INT,
  Player_Name Varchar (20), 
  Position_id INT,
  Team_id INT,
  Matches_Played INT,
  Jersey_Number INT,
  Age INT,
  Height_cms INT,
  Weight_Kgs INT,
  Goal_to_Game INT
);

CREATE Table MatchTable(
  Match_id INT,
  Team_id INT, 
  Referee_id INT,
  Match_Winner_Id INT,
  Match_Date DATE,
  Stadium_id INT,
  Man_Of_The_Match Varchar (20)
);

CREATE Table Player_Statistics(
  Stat_id INT,
  Match_Id INT,
  Player_Id INT, 
  Goals_Scored INT,
  Assists_Given INT,
  Minutes_Played INT,
  Goal_To_Minute INT,
  SAVES INT,
  Clean_Sheets INT,
  Red_Cards INT,
  Yellow_Cards INT
);

CREATE Table ContractTable(
  Contract_id INT,
  Player_id INT,
  Contract_StartDate DATE,
  Contract_EndDate DATE,
  Salary INT
);

CREATE Table MatchPlayedTable(
  PlayerMatch_id INT,
  Player_id INT,
  Match_id INT
);