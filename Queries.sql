USE SOCCER_LEAGUE_DB;

SELECT Match_Id, Winner_Team_Id, Man_Of_The_Match
FROM MATCHTABLE;

SELECT MatchTable.Match_Id, MatchTable.Winner_Team_Id, MatchTable.Man_Of_The_Match, PlayerTable.Player_Name
FROM MATCHTABLE
JOIN PlayerTable
ON MatchTable.Man_Of_The_Match = PlayerTable.Player_Id;

SELECT * FROM PremierLeague;
SELECT * FROM PlayerTable;
SELECT * FROM MatchTable;
SELECT * FROM REFEREETABLE;
SELECT * FROM Player_Statistics;
SELECT * FROM ManagerTable;
SELECT * FROM VenueTable;
SELECT * FROM ContractTable;
SELECT * FROM Player_PositionTable;

-- TRIGGER 1 FOR PLAYER CONTRACT --
DELIMITER //
CREATE TRIGGER check_contract_dates
BEFORE INSERT ON ContractTable
FOR EACH ROW
BEGIN
    IF NEW.Contract_EndDate < NEW.Contract_StartDate THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Contract end date cannot be before contract start date';
    END IF;
END;//
DELIMITER ;

-- DROP TRIGGER check_contract_dates;

-- INSERT INTO ContractTable (Contract_id, Player_id, Contract_StartDate, Contract_EndDate, Salary)
-- VALUES (37, 36, '2022-05-02', '2021-04-30', 257000);

-- TRIGGER 1 for Players Contracts
Delimiter $$
CREATE TRIGGER player_contract_trigger BEFORE INSERT ON ContractTable
FOR EACH ROW 
BEGIN
    DECLARE contract_count INT;
    
    SELECT COUNT(*) INTO contract_count FROM ContractTable WHERE player_id = NEW.player_id;
    
    IF contract_count >= 1 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'A player can only have one contract.';
    END IF;
    
    IF (NEW.contract_enddate < NEW.contract_startdate) THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Contract end date cannot be before the contract start date.';
    END IF;
    
END;$$
delimiter ;

INSERT INTO ContractTable (Contract_id, Player_id, Contract_StartDate, Contract_EndDate, Salary)
VALUES (37, 36, '2022-05-02', '2024-04-30', 257000);

INSERT INTO ContractTable (Contract_id, Player_id, Contract_StartDate, Contract_EndDate, Salary)
VALUES (36, 36, '2022-05-02', '2024-04-30', 257000);


-- VIEW 1 FOR PLAYER AND TEAM INFO --
CREATE VIEW TeamMembers AS
SELECT PremierLeague.Team_Id, PremierLeague.Team_Name, PlayerTable.Player_Name, PlayerTable.Jersey_Number
FROM PremierLeague
JOIN PlayerTable
ON PremierLeague.Team_Id = PlayerTable.Team_Id;

SELECT * FROM TeamMembers;
-- VIEW 2 FOR PLAYER CONTRACT INFO --
CREATE VIEW PlayerContract AS
SELECT PlayerTable.Team_Id AS Team_ID, PlayerTable.Player_Name, PlayerTable.Jersey_Number, ContractTable.Salary AS Wages,
ContractTable.Contract_EndDate AS End_Date
FROM PlayerTable
JOIN ContractTable
ON PlayerTable.Player_Id = ContractTable.Player_Id;

SELECT * FROM TeamMembers;
SELECT * FROM PlayerContract;

SELECT * FROM PlayerContract;

-- STORED PROCEDURE --

DELIMITER //
DROP PROCEDURE IF EXISTS GetMatchesPlayedByPlayer//
CREATE PROCEDURE GetMatchesPlayedByPlayer(IN p_PlayerId INT)
BEGIN
    SELECT MatchTable.Match_id, MatchTable.Match_Date, MatchTable.winner_team_id, PremierLeague.Team_Name as Winner_Team_Name,
    MatchTable.loser_team_id, PremierLeague_1.Team_Name as Loser_Team_Name, Player_Statistics.Goals_Scored, Player_Statistics.Assists_Given
    FROM PlayerTable
    JOIN MatchPlayedTable ON PlayerTable.Player_id = MatchPlayedTable.Player_id
    JOIN MatchTable ON MatchPlayedTable.Match_id = MatchTable.Match_id
    JOIN PremierLeague ON MatchTable.winner_team_id = PremierLeague.Team_id
    JOIN PremierLeague as PremierLeague_1 ON MatchTable.loser_team_id = PremierLeague_1.Team_id
    JOIN Player_Statistics ON MatchPlayedTable.Player_id = Player_Statistics.Player_Id
    WHERE PlayerTable.Player_id = p_PlayerId;
END//

DELIMITER ;

CALL GetMatchesPlayedByPlayer (34);
