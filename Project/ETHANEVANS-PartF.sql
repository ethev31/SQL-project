-- Create Tables

CREATE TABLE Movie (
    MovieID Char(8) NOT NULL,
    Title Varchar2(100) NOT NULL,
    CONSTRAINT pk_movie PRIMARY KEY (MovieID)
);

CREATE TABLE Genre (
    GenreID Char(4) NOT NULL,
    GenreName Varchar2(50) NOT NULL,
    CONSTRAINT pk_genre PRIMARY KEY (GenreID)
);

CREATE TABLE MoviePlan (
    MemPlan Char(1) NOT NULL,
    MovieID Char (8) NOT NULL,
    CONSTRAINT pk_movie_plan PRIMARY KEY (MemPlan, MovieID)
);

CREATE TABLE MovieGenre (
    MovieID Char(8) NOT NULL,
    GenreID Char(4) NOT NULL,
    CONSTRAINT pk_movie_genre PRIMARY KEY (MovieID, GenreID)
);

-- Add constraints

ALTER TABLE MoviePlan
    ADD CONSTRAINT fk_movie_plan_movie
    FOREIGN KEY (MovieID)
    REFERENCES Movie(MovieID);

ALTER TABLE MoviePlan
    ADD CONSTRAINT fk_movie_plan_plan
    FOREIGN KEY (MemPlan)
    REFERENCES Plan(MemPlan);

ALTER TABLE MovieGenre
    ADD CONSTRAINT fk_movie_genre_movie
    FOREIGN KEY (MovieID)
    REFERENCES Movie(MovieID);

-- Insert Genre Table

INSERT INTO Genre (GenreID, GenreName)
    VALUES ('g001', 'Action');
INSERT INTO Genre (GenreID, GenreName)
    VALUES ('g002', 'Adventure');
INSERT INTO Genre (GenreID, GenreName)
    VALUES ('g003', 'Drama');
INSERT INTO Genre (GenreID, GenreName)
    VALUES ('g004', 'Comedy');
INSERT INTO Genre (GenreID, GenreName)
    VALUES ('g005', 'Romance');
INSERT INTO Genre (GenreID, GenreName)
    VALUES ('g006', 'Thriller');
INSERT INTO Genre (GenreID, GenreName)
    VALUES ('g007', 'Western');
INSERT INTO Genre (GenreID, GenreName)
    VALUES ('g008', 'Documentary');
INSERT INTO Genre (GenreID, GenreName)
    VALUES ('g009', 'Crime');
INSERT INTO Genre (GenreID, GenreName)
    VALUES ('g010', 'Film-Noir');
INSERT INTO Genre (GenreID, GenreName)
    VALUES ('g011', 'Horror');
INSERT INTO Genre (GenreID, GenreName)
    VALUES ('g012', 'Sci-Fi');
INSERT INTO Genre (GenreID, GenreName)
    VALUES ('g013', 'Children');
INSERT INTO Genre (GenreID, GenreName)
    VALUES ('g014', 'Fantasy');
INSERT INTO Genre (GenreID, GenreName)
    VALUES ('g015', 'Animation');

-- Insert MovieGenre Table

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000001', 'g001');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000001', 'g002');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000001', 'g003');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000001', 'g005');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000001', 'g006');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000001', 'g007');

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000002', 'g004');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000002', 'g005');

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000003', 'g002');

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000004', 'g004');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000004', 'g009');

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000005', 'g004'); 

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000006', 'g013');   
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000006', 'g003'); 

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000007', 'g008');

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000008', 'g009');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000008', 'g003');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000008', 'g010');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000008', 'g006');

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000009', 'g004');

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000010', 'g008');

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000011', 'g001');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000011', 'g002');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000011', 'g013');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000011', 'g004');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000011', 'g014');

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000012', 'g001');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000012', 'g006'); 

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000013', 'g001');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000013', 'g004');

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000014', 'g003');

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000015', 'g011'); 
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000015', 'g012');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000015', 'g006');

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000016', 'g003');

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000017', 'g001'); 
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000017', 'g003');

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000018', 'g003');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000018', 'g005');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000018', 'g007');

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000019', 'g015');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000019', 'g013');
INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000019', 'g014');

INSERT INTO MovieGenre (MovieID, GenreID)
    VALUES ('mv000020', 'g004');   

-- Insert MoviePlan Table

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000001');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000001');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000002');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('B', 'mv000002');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('S', 'mv000002');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000002');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000003');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('B', 'mv000003');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('S', 'mv000003');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000003');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000004');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000004');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000005');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('B', 'mv000005');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('S', 'mv000005');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000005');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000006');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('B', 'mv000006');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('S', 'mv000006');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000006');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000007');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000007');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000008');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('B', 'mv000008');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000009');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('B', 'mv000009');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('S', 'mv000009');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000009');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000010');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000010');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000011');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000011');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000012');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('B', 'mv000012');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('S', 'mv000012');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000012');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000013');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('B', 'mv000013');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('S', 'mv000013');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000013');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000014');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('B', 'mv000014');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('S', 'mv000014');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000014');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000015');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000015');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000016');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('B', 'mv000016');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('S', 'mv000016');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000016');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000017');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('B', 'mv000017');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('S', 'mv000017');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000017');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000018');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000018');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000019');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('B', 'mv000019');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('S', 'mv000019');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('T', 'mv000019');

INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('P', 'mv000020');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('B', 'mv000020');
INSERT INTO MoviePlan (MemPlan, MovieID)
    VALUES ('S', 'mv000020');

-- Insert Movie Table

INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000001', 'Northwest Passage');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000002', 'Serendipity');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000003', 'Tai-Pan');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000004', 'Desperate Living');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000005', 'Death at a Funeral');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000006', 'Old Yeller');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000007', 'Code, The');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000008', 'Hickey and Boggs');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000009', 'Lookin'' to Get Out');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000010', 'When Jews Were Funny');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000011', 'Sorcerer''s Apprentice, The');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000012', 'Patriot Games');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000013', 'Charlie''s Angels');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000014', 'Macbeth in Manhattan');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000015', 'Invasion of the Body Snatchers');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000016', 'Born Wild');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000017', 'Pistol Whipped');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000018', 'Winning of Barbara Worth, The');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000019', 'Strange Magic');
INSERT INTO Movie (MovieID, Title)
    VALUES ('mv000020', 'Confessions of a Teenage Drama Queen');

SELECT * FROM Movie;
SELECT * FROM Genre;
SELECT * FROM MoviePlan;
SELECT * FROM MovieGenre;