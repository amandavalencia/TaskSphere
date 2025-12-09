--CREATE DATABASE TaskSphere
--GO
--USE TaskSphere
--GO
--CREATE TABLE Category (
--	CategoryID INT PRIMARY KEY IDENTITY(1,1),
--	Name NVARCHAR(50) NOT NULL,
--	Description NVARCHAR(150)
--)

--CREATE TABLE Task (
--	TaskID INT PRIMARY KEY IDENTITY(1,1),
--	Title NVARCHAR(50) NOT NULL,
--	Description NVARCHAR(150),
--	Deadline DATETIME,
--	Status NVARCHAR(50) NOT NULL,
--	CategoryID INT,
--	CONSTRAINT FK_Category_Task FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
--)

--INSERT INTO Category (Name, Description)
--VALUES
--('Home', 'Everything related to the house, chores and improvements'),
--('Work', 'Tasks related to professional projects and responsibilities'),
--('Health', 'Activities that improve physical and mental well-being'),
--('Hobbies', 'Fun things to do during free time'),
--('Travel', 'Trips, planning and exploration'),
--('Learning', 'Education and skill-building tasks')

--INSERT INTO Task (Title, Description, Deadline, Status, CategoryID)
--VALUES
---- Home (1)
--('Clean the Dragon Lair', 'Vacuum the living room before dust bunnies unionize.', '2025-01-20 18:00', 'Pending', 1),
--('Fix the Ancient Portal', 'Repair that squeaky door that sounds like a dying velociraptor.', '2025-01-22 09:00', 'In Progress', 1),
--('Water the Jungle', 'Keep the houseplants alive for once.', '2025-01-23 08:00', 'Pending', 1),

---- Work (2)
--('Prepare the Grand Presentation', 'PowerPoint slides with just enough animations.', '2025-01-25 10:00', 'In Progress', 2),
--('Email the Council', 'Respond to all clients before they think you vanished.', '2025-01-19 16:00', 'Completed', 2),
--('Refactor the Time Machine Code', 'Clean up old messy logic from last sprint.', '2025-01-27 14:00', 'Pending', 2),

---- Health (3)
--('Summon the Cardio Spirit', '30 minutes of jogging without crying.', '2025-01-18 07:30', 'Pending', 3),
--('Stretch Like a Wizard', 'Morning stretching ritual to avoid turning into a brick.', '2025-01-19 08:00', 'Completed', 3),
--('Eat One Healthy Thing', 'One (1) vegetable. Just do it.', '2025-01-18 12:00', 'Pending', 3),

---- Hobbies (4)
--('Paint a Tiny Goblin', 'Miniature painting session — green goblins deserve love.', '2025-01-26 20:00', 'In Progress', 4),
--('Record a Space Podcast', 'Talk about aliens like you know them personally.', '2025-01-28 18:00', 'Pending', 4),
--('Bake an Experimental Cake', 'Try a new recipe that may or may not explode.', '2025-01-21 17:00', 'Pending', 4),

---- Travel (5)
--('Plan the Great Escape', 'Choose a destination far away from responsibilities.', '2025-02-01 12:00', 'Pending', 5),
--('Pack the Essentials', 'Remember socks. Forget stress.', '2025-01-31 19:00', 'Pending', 5),
--('Book a Portal Jump', 'Make travel reservations before prices ascend to the moon.', '2025-01-29 15:00', 'In Progress', 5),

---- Learning (6)
--('Master Fireball Level 1', 'Learn something new — maybe not actual fire spells.', '2025-02-05 21:00', 'Pending', 6),
--('Read a Big Brain Book', 'At least 20 pages of anything that feels smart.', '2025-01-24 22:00', 'In Progress', 6),
--('Finish Online Course', 'Complete that course you started 6 months ago.', '2025-02-03 20:00', 'Pending', 6)

SELECT t.Title, c.Name as Category FROM Task AS t
INNER JOIN Category AS c ON c.CategoryID = t.CategoryID

SELECT t.Title, c.Name as Category FROM Task AS t
INNER JOIN Category AS c ON c.CategoryID = t.CategoryID
WHERE c.Name LIKE 'Work'


SELECT t.Title, c.Name as Category, t.Deadline FROM Task AS t
INNER JOIN Category AS c ON c.CategoryID = t.CategoryID
WHERE t.Deadline BETWEEN '2025-01-09' AND '2025-01-20'


SELECT t.Title, c.Name as Category, t.Deadline FROM Task AS t
INNER JOIN Category AS c ON c.CategoryID = t.CategoryID
ORDER BY t.Deadline DESC


SELECT * FROM Task AS t
WHERE t.Status LIKE 'Pending'

INSERT INTO Category(Description, Name) VALUES
('Conquer the galaxy with the force and Yoda.','Intergalactic Warfare')

UPDATE Task
SET Status = 'Completed'
WHERE TaskID = 9

DELETE FROM Task
WHERE CategoryID = 3
DELETE FROM Category
WHERE CategoryID = 3

UPDATE Task
SET Deadline = '2026-01-01 20:00:13'
WHERE TaskID = 1


SELECT * FROM Category