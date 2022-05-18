CREATE DATABASE if NOT EXISTS Bocharska CHARACTER SET 'utf8mb4'; USE Bocharska;
CREATE TABLE USERS (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
login VARCHAR(100) NOT NULL,
passworld VARCHAR(20) NOT NULL
);

CREATE TABLE PROFILES (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
email VARCHAR(100) NOT NULL,
age INT 
);

CREATE TABLE GAMES (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_player_id INT NOT NULL,
second_player_id INT NOT NULL, 
FOREIGN KEY (first_player_id) REFERENCES PROFILES (id), 
FOREIGN KEY (second_player_id) REFERENCES PROFILES (id)
);

CREATE TABLE GAMES_RESULT (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
result_value VARCHAR(20) NOT NULL
);

CREATE TABLE ACHIEVEMENTS (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
achiev_name VARCHAR(20)
);

CREATE TABLE PLAYER_ACHIEVS (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 player_id INT NOT NULL,
 achiev_id INT NOT NULL, 
 FOREIGN KEY (player_id) REFERENCES PROFILES (id), 
 FOREIGN KEY (achiev_id) REFERENCES ACHIEVEMENTS (id)
);

CREATE TABLE PLAYER_RESULTS (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
player_id INT NOT NULL,
result_id INT NOT NULL,
game_id INT NOT NULL, 
FOREIGN KEY (player_id) REFERENCES PROFILES (id), 
FOREIGN KEY (result_id) REFERENCES GAMES_RESULT (id), 
FOREIGN KEY (game_id) REFERENCES GAMES (id)
);

INSERT  INTO USERS VALUES
(1, 'Алехандро@gmail.com', 'АлехандроA'),
(2, 'Алонсо@exampile.com', 'АлонсоA'),
(3, 'Бернардо@exampilel.com', 'БернардоB'),
(4, 'Диего@exampile.com', 'ДиегоD'),
(5, 'Карлос@exampile.com', 'КарлосK'),
(6, 'Леонардоо@exampilel.com', 'ЛеонардоL'),
(7, 'Мануэль@exampile.com', 'МануэльM'),
(8, 'Мигельо@exampile.com', 'МигельM'),
(9, 'Франсиско@exampile.com', 'ФрансискоF'),
(10, 'Джеймс@exampile.com', 'ДжеймсJ'),
(11, 'Кристофер@exampile.com', 'КристоферK'),
(12, 'Майкл@exampile.com', ' МайклM'),
(13, 'Стивен@exampile.com', 'СтивенS'),
(14, 'Вильям@exampile.com', 'ВильямW'),
(15, 'Брайн@exampilel.com', 'БрайнB');

INSERT  INTO PROFILES VALUES
(1, 'Алехандро', 'Бриджит', 'Алехандро@exampile.com', '18'),
(2, 'Алонсо', 'Виржини', 'Алонсо@exampile.com', '19'),
(3, 'Бернардо', 'Шанталь', 'Бернардо@example.com', '18'),
(4, 'Диего', 'Бриджит', 'Диего@exampilel.com', '17'),
(5, 'Карлос', 'Стефаник', 'Карлос@exampilel.com', '17'),
(6, 'Леонардо', 'Селин', 'Леонардоо@exampilel.com', '18'),
(7, 'Мануэль', 'Шмигель', 'Мануэль@exampile.com', '18'),
(8, 'Мигель', 'Манон', 'Мигельо@exampile.com', '19'),
(9, 'Франсиско', 'Лучият', 'Франсиско@exampile.com', '18'),
(10, 'Джеймс', 'Бонд', 'Джеймс@exampile.com', '18'),
(11, 'Кристофер', 'Ланг', 'Кристофер@exampile.com', '17'),
(12, 'Майкл', 'Ральф', 'Майкл@exampile.com', '18'),
(13, 'Стивен', 'Смит', 'Стивен@exampilel.com', '18'),
(14, 'Вильям', 'Вайт', 'Вильям@exampilel.com', '19'),
(15, 'Брайн', 'Адамс', 'Брайн@exampile.com', '18');

INSERT  INTO GAMES VALUES
(1, '1', '15'),
(2, '5', '8'),
(3, '3', '10'),
(4, '6', '9'),
(5, '11', '7'),
(6, '2', '14'),
(7, '13', '5'),
(8, '12', '4'),
(9, '9', '10'),
(10, '4', '15'),
(11, '7', '13');

INSERT INTO GAMES_RESULT VALUES
(1, 'WIN'),
(2, 'LOSE'), 
(3, 'DRAW');

INSERT INTO ACHIEVEMENTS VALUES
(1, 'NEWBIE'),
(2, 'AMATEUR'),
(3, 'CONNOISSEUR'),
(4, 'MASTER'),
(5, 'GRANDMASTER');

INSERT INTO PLAYER_ACHIEVS VALUES
(1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,4,3),
(6,4,4),
(7,4,5),
(8,5,3),
(9,5,5),
(10,6,2),
(11,6,4),
(12,7,1),
(13,7,2),
(14,8,3),
(15,8,4),
(16,9,3),
(17,9,4),
(18,9,5),
(19,10,3),
(20,10,5),
(21,11,2),
(22,11,4),
(23,12,2),
(24,12,3),
(25,13,4),
(26,13,5),
(27,14,4),
(28,14,5),
(29,15,1),
(30,15,2),
(31,15,3),
(32,15,4);

INSERT INTO PLAYER_RESULTS VALUES 
(1,1,2,1),
(2,15,1,1),
(3,5,3,2),
(4,8,3,2),
(5,3,1,3),
(6,10,2,3),
(7,6,3,4),
(9,11,1,5),
(10,7,2,5),
(11,2,2,6),
(12,14,1,6),
(13,13,1,7),
(14,5,2,7),
(15,12,3,8),
(16,4,3,8),
(17,9,1,9),
(18,10,2,9),
(19,4,1,10),
(20,15,2,10),
(21,7,2,11),
(22,13,1,11);

DELETE
FROM USERS
WHERE id IN (2, 5, 7, 12, 15);

UPDATE PROFILES SET first_name = 'Bob'

WHERE id = 5; ALTER TABLE USERS ADD COLUMN profile_id INT;
UPDATE USERS SET profile_id = 
CASE 
WHEN id = 1 THEN 2
WHEN id = 3 THEN 4
WHEN id = 4 THEN 5 
WHEN id = 6 THEN 3 
WHEN id = 8 THEN 7 
WHEN id = 9 THEN 1 
WHEN id = 10 THEN 8 
WHEN id = 11 THEN 12 
WHEN id = 13 THEN 10 
WHEN id = 14 THEN 11 
ELSE id 
END;

 
 
