.open showtime.db
.mode box
  
PRAGMA foreign_keys = ON;

-- CREATE TABLE Artist (
--   ArtistID INTEGER,
--   FirstName TEXT NOT NULL,
--   LastName TEXT NOT NULL,
--   Email TEXT UNIQUE NOT NULL,
--   PhoneNumber TEXT,
--   Address TEXT,
--   PRIMARY KEY (ArtistID)
-- );

-- CREATE TABLE Fans (
--   PersonID INTEGER,
--   FirstName TEXT NOT NULL,
--   LastName TEXT NOT NULL,
--   Email TEXT UNIQUE NOT NULL,
--   PhoneNumber TEXT,
--   Address TEXT,
--   BirthDate Date NOT NULL,
--   PRIMARY KEY (PersonID)
-- );



-- CREATE TABLE FansArtist (
--   PersonID INTEGER,
--   ArtistID INTEGER,
--   PRIMARY KEY (PersonID, ArtistID),
--   FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID) ON DELETE CASCADE ON UPDATE CASCADE,
--   FOREIGN KEY (PersonID) REFERENCES Fans(PersonID) ON DELETE CASCADE ON UPDATE CASCADE
-- );

-- CREATE TABLE Genre (
--   GenreID INTEGER,
--   GenreName TINYTEXT NOT NULL,
--   Description TEXT,
--   PRIMARY KEY (GenreID)
-- );

-- CREATE TABLE ArtistGenre (
--   ArtistID INTEGER,
--   GenreID INTEGER,
--   PRIMARY KEY (ArtistID, GenreID),
--   FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID) ON DELETE CASCADE ON UPDATE CASCADE,
--   FOREIGN KEY (GenreID) REFERENCES Genre(GenreID) ON DELETE CASCADE ON UPDATE CASCADE
-- );

-- CREATE TABLE FansGenre (
--   PersonID INTEGER,
--   GenreID INTEGER,
-- PRIMARY KEY (PersonID, GenreID),
-- FOREIGN KEY (PersonID) REFERENCES Fans (PersonID) ON DELETE CASCADE ON UPDATE CASCADE,
-- FOREIGN KEY (GenreID) REFERENCES Genre (GenreID) ON DELETE CASCADE ON UPDATE CASCADE
-- );

-- Create Table Venues (
--   VenueID INTEGER,
--   VenueName TINYTEXT NOT NULL,
--   Address text NOT NULL,
--   Capacity INTEGER,
-- PRIMARY KEY (VenueID)
-- );

-- Create Table Schedule (
--   ScheduleID INTEGER,
--   ShowsID INTEGER,
--   StartTime TIME,
--   EndTime TIME,
--   Dates DATE,
--   PRIMARY KEY (ScheduleID),
--   Foreign Key (ShowsID) References Shows (ShowsID) ON DELETE CASCADE ON UPDATE CASCADE
-- );

-- Create Table VenuesSchedule (
--   VenueID INTEGER,
--   ScheduleID INTEGER,
-- PRIMARY KEY (VenueID, ScheduleID),
-- FOREIGN KEY (VenueID) REFERENCES Venues (VenueID) ON DELETE CASCADE ON UPDATE CASCADE,
-- FOREIGN KEY (ScheduleID) REFERENCES Schedule (ScheduleID) ON DELETE CASCADE ON UPDATE CASCADE
-- );

-- Create Table Shows (
--   ShowID INTEGER,
--   ShowName TINYTEXT NOT NULL,
--   Price NUMERIC CHECK (Price BETWEEN 20 AND 500),
--   FullOrNot BOOLEAN,
-- Primary Key (ShowID)
-- );

-- Create Table ArtistShows (
--   ArtistID INTEGER,
--   ShowID INTEGER,
-- PRIMARY KEY (ArtistID, ShowID),
-- FOREIGN KEY (ArtistID) REFERENCES Artist (ArtistID) ON DELETE CASCADE ON UPDATE CASCADE,
-- FOREIGN KEY (ShowID) REFERENCES Shows (ShowID) ON DELETE CASCADE ON UPDATE CASCADE
-- );

-- .schema
-- .table

-- insert into artist values(1,'Eminem', 'Khalifa', 'eminem.khalifa@gmail.com', '209-510 8909','1515 Cleveland Street, Memphis, TN, 78903' ), (2, "Yaphet", "swift",'yaphet@gmail.com',"+49 987-986-09879", "2112 cleveland Blv, Caldwell, ID, 83605"),(3, "Ariana", "Wick", "ariana@gmail.com","2903942029",  "2342 caldwell st, Boston, MA 9749"), (4, "Mia", "Cruise","mia@gmail.com","2084595151", "5163 ustik rd, Caldwell, ID, 23422");


-- insert into Fans (PersonID, FirstName, LastName, Email, PhoneNumber, Address, BirthDate) values (1, 'Yaphet', 'Bashahider', 'yaphetL@gmail.com', '208-550-6248', '2112 cleveland blvd','2000-06-02'), (2, 'Moubarak', 'Abdoulayeso', 'MoubarakA@gmail.com', '208-567-7368', '2112 cleveland blvd', '2001-07-01'), (3, 'Bathigesuthira', 'Desi', 'BathigesuthiraD@gmail.com', null, '2112 cleveland blvd', '2002-08-12'), (4, 'Ahmad', 'Hammoud', 'AhmadH@gmail.com', '208-765-3546', null, '2003-09-03');

-- insert into Venues values (1,'Treefort Music Hall','2156 Cleveland Rd Street 7, Boise, ID, 78906', 6850),(2, 'ExtraMile Arena', '5623 Ustick Rd, Boise, ID, 67028', 6500), (3, 'Knitting Factory Arena', '456 St Patrick Blvd, Boise, ID', 6900),(4,'Hammoud Entertainment','566 whitewood Rd Street 34, Boise, ID, 83696', 3450);

-- insert into Shows values (1, 'Variposa', 300, 1), (2, 'Marquette', 400, 1) , (3, 'Big Bang', 450 , 1), (4, 'Mega Blast', 390, 0);


-- insert into Genre values (1, 'Hip-Hop', 'Hip hop is a style of popular music of African American and Hispanic origin, featuring rap with an electronic backing.'), (2, 'Rap', 'Rap is a type of popular music originating among African American communities in which words are recited rapidly and rhythmically over a prerecorded, typically electronic instrumental backing.'), (3, 'Rock', 'Rock music is a broad genre of popular music that originated as "rock and roll" in the United States in the late 1940s and early 1950s, developing into a range of different styles from the mid-1960s, particularly in the United States and United Kingdom.'), (4, 'Country', 'Country is a music genre originating in the Southern and Southwestern United States. First produced in the 1920s, country primarily focuses on working class Americans and blue-collar American life.');


-- insert into Schedule values(1, 1, '15:30:00', '18:00:00', '2023-05-10'), (2, 2, '15:30:00', '18:00:00', '2023-05-17'),(3, 3, '15:30:00', '18:30:00','2023-05-19'),(4, 4, '15:30:00', '18:00:00', '2023-05-20');

-- insert into ArtistGenre values (1, 2), (1, 3), (2, 1), (3, 3), (4, 1);

-- insert into VenuesSchedule values (1, 2), (1, 3), (2, 1), (3, 3), (3, 4), (4, 1);

-- insert into ArtistShows values (1, 4), (2, 3), (3, 1), (4, 2);

-- insert into FansArtist values (1, 3), (2, 1), (3, 4), (4, 2);

-- insert into FansGenre values(2, 1), (4, 3), (3, 2), (1, 4);

-- drop view ShowTimes;

-- create view ShowTimes as 
-- select s.ShowName as "Show_Name", a.FirstName || " " || a.LastName as "Artist", g.GenreName as "Genre", sch.StartTime as "Start_Time", sch.EndTime as "End_Time", sch.Dates as "Dates", v.VenueName as "Venue", v.Address as "Address", s.Price as "Price", 
-- case when s.FullOrNot = 1 then 'Yes'
--      else 'No'
-- end
--   as "Full?"
-- from Shows as s join  
-- ArtistShows as ars on s.ShowID = ars.ShowID
-- join Artist as a on ars.ArtistID = a.ArtistID
-- join ArtistGenre as ag on ag.ArtistID = a.ArtistID
-- join Genre as g on ag.GenreID = g.GenreID
-- join Schedule as sch on s.ShowID = sch.ShowsID
-- join VenuesSchedule as vs on sch.ScheduleID = vs.ScheduleID
-- join Venues as v on vs.VenueID = v.VenueID; 


--drop view upcomming_shows; 
/*
create view upcomming_shows as 
select s.ShowName, sch.StartTime as "Start_Time", sch.EndTime as "End_Time", sch.Dates, v.VenueName, v.Address
from Venues as v 
join VenuesSchedule as vs on v.VenueID = vs.VenueID
join Schedule as sch on vs.ScheduleID = sch.ScheduleID
join Shows as s on sch.ShowsID = s.ShowID
where sch.Dates > (select date());*/
/*
create view past_shows as 
select s.ShowName, sch.StartTime as "Start_Time", sch.EndTime as "End_Time", sch.Dates, v.VenueName, v.Address
from Venues as v 
join VenuesSchedule as vs on v.VenueID = vs.VenueID
join Schedule as sch on vs.ScheduleID = sch.ScheduleID
join Shows as s on sch.ShowsID = s.ShowID
where sch.Dates < (select date());*/

/*create view ShowsPerVenue as
  select s.ShowName as "Show_Name", s.Price as "Price", 
  case 
  when s.FullOrNot = 1 then 'Yes'
  else 'No'
end as "Full?", sch.StartTime as "Start Time", sch.EndTime as "End Time", sch.Dates as "Dates", a.FirstName || " " || a.LastName as "Artist Name", a.Email as "Artist Email",a.PhoneNumber as "Artist Phone Number", a.Address as " Artist Address"
from Shows as s
  join Schedule as sch on s.ShowID = sch.ShowsID
  join ArtistShows as ars on s.ShowID = ars.ShowID
  join Artist as a on a.ArtistID = a.ArtistID;*/

-- Domain tables
SELECT * FROM Shows;
SELECT * FROM Artist;
SELECT * FROM Fans;
SELECT * FROM Schedule;
SELECT * FROM Venues;

-- Lookup table
SELECT * FROM Genre;

-- Linking table
select * from ArtistGenre;
select * from VenuesSchedule;
select * from ArtistShows;
select * from FansArtist;
select * from FansGenre;

-- Views
select * from ShowTimes;
select * from upcomming_shows limit 5;
select * from past_shows limit 5;
select * from ShowsPerVenue limit 5;

--select count(*) from 

-- .schema Fans