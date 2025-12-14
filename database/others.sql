INSERT INTO mock_tests (title, description, created_at, updated_at)
VALUES 
('Mock Test 4', 'This is mock test 2', now(),now()),
('Mock Test 5', 'This is mock test 3', now(),now()),
('Mock Test 6', 'This is mock test 2', now(),now()),
('Mock Test 7', 'This is mock test 3', now(),now()),
('Mock Test 8', 'This is mock test 2', now(),now()),
('Mock Test 9', 'This is mock test 3', now(),now()),
('Mock Test 10', 'This is mock test 2', now(),now()),
('Mock Test 11', 'This is mock test 3', now(),now());






insert into sections(mock_test_id,name,order_no,duration,updated_at,created_at)
values
(4,'Listening',1,30,now(),now()),
(4,'Reading',2,60,now(),now()),
(4,'Writing',3,60,now(),now()),

(5,'Listening',1,30,now(),now()),
(5,'Reading',2,60,now(),now()),
(5,'Writing',3,60,now(),now()),

(6,'Listening',1,30,now(),now()),
(6,'Reading',2,60,now(),now()),
(6,'Writing',3,60,now(),now()),

(7,'Listening',1,30,now(),now()),
(7,'Reading',2,60,now(),now()),
(7,'Writing',3,60,now(),now()),

(8,'Listening',1,30,now(),now()),
(8,'Reading',2,60,now(),now()),
(8,'Writing',3,60,now(),now()),

(9,'Listening',1,30,now(),now()),
(9,'Reading',2,60,now(),now()),
(9,'Writing',3,60,now(),now()),

(10,'Listening',1,30,now(),now()),
(10,'Reading',2,60,now(),now()),
(10,'Writing',3,60,now(),now()),

(11,'Listening',1,30,now(),now()),
(11,'Reading',2,60,now(),now()),
(11,'Writing',3,60,now(),now());





insert into question_groups(section_id,title,description,media_file,updated_at,created_at)
values
(10,'listening part 1','listening test 4',null,now(),now()),
(10,'listening part 2','listening test 4',null,now(),now()),
(10,'listening part 3','listening test 4',null,now(),now()),
(10,'listening part 4','listening test 4',null,now(),now()),
(11,'reading part 1','reading test 4 ',null,now(),now()),
(11,'reading part 2','reading test 4 ',null,now(),now()),
(11,'reading part 3','reading test 4 ',null,now(),now()),
(12,'writing part 1','writing test 4 ',null,now(),now()),
(12,'writing part 2','writing test 4 ',null,now(),now()),
(13,'listening part 1','listening test 5',null,now(),now()),
(13,'listening part 2','listening test 5',null,now(),now()),
(13,'listening part 3','listening test 5',null,now(),now()),
(13,'listening part 4','listening test 5',null,now(),now()),
(14,'reading part 1','reading test 5 ',null,now(),now()),
(14,'reading part 2','reading test 5 ',null,now(),now()),
(14,'reading part 3','reading test 5 ',null,now(),now()),
(15,'writing part 1','writing test 5 ',null,now(),now()),
(15,'writing part 2','writing test 5 ',null,now(),now()),
(16,'listening part 1','listening test 6',null,now(),now()),
(16,'listening part 2','listening test 6',null,now(),now()),
(16,'listening part 3','listening test 6',null,now(),now()),
(16,'listening part 4','listening test 6',null,now(),now()),
(17,'reading part 1','reading test 6',null,now(),now()),
(17,'reading part 2','reading test 6 ',null,now(),now()),
(17,'reading part 3','reading test 6 ',null,now(),now()),
(18,'writing part 1','writing test 6 ',null,now(),now()),
(18,'writing part 2','writing test 6 ',null,now(),now()),
(19,'listening part 1','listening test 7',null,now(),now()),
(19,'listening part 2','listening test 7',null,now(),now()),
(19,'listening part 3','listening test 7',null,now(),now()),
(19,'listening part 4','listening test 7',null,now(),now()),
(20,'reading part 1','reading test 7 ',null,now(),now()),
(20,'reading part 2','reading test 7 ',null,now(),now()),
(20,'reading part 3','reading test 7 ',null,now(),now()),
(21,'writing part 1','writing test 7 ',null,now(),now()),
(21,'writing part 2','writing test 7 ',null,now(),now()),
(22,'listening part 1','listening test 8',null,now(),now()),
(22,'listening part 2','listening test 8',null,now(),now()),
(22,'listening part 3','listening test 8',null,now(),now()),
(22,'listening part 4','listening test 8',null,now(),now()),
(23,'reading part 1','reading test 8 ',null,now(),now()),
(23,'reading part 2','reading test 8 ',null,now(),now()),
(23,'reading part 3','reading test 8 ',null,now(),now()),
(24,'writing part 1','writing test 8 ',null,now(),now()),
(24,'writing part 2','writing test 8 ',null,now(),now()),
(25,'listening part 1','listening test 9',null,now(),now()),
(25,'listening part 2','listening test 9',null,now(),now()),
(25,'listening part 3','listening test 9',null,now(),now()),
(25,'listening part 4','listening test 9',null,now(),now()),
(26,'reading part 1','reading test 9 ',null,now(),now()),
(26,'reading part 2','reading test 9 ',null,now(),now()),
(26,'reading part 3','reading test 9 ',null,now(),now()),
(27,'writing part 1','writing test 9 ',null,now(),now()),
(27,'writing part 2','writing test 9 ',null,now(),now()),
(28,'listening part 1','listening test 10',null,now(),now()),
(28,'listening part 2','listening test 10',null,now(),now()),
(28,'listening part 3','listening test 10',null,now(),now()),
(28,'listening part 4','listening test 10',null,now(),now()),
(29,'reading part 1','reading test 10 ',null,now(),now()),
(29,'reading part 2','reading test 10 ',null,now(),now()),
(29,'reading part 3','reading test 10 ',null,now(),now()),
(30,'writing part 1','writing test 10 ',null,now(),now()),
(30,'writing part 2','writing test 10 ',null,now(),now()),
(31,'listening part 1','listening test 11',null,now(),now()),
(31,'listening part 2','listening test 11',null,now(),now()),
(31,'listening part 3','listening test 11',null,now(),now()),
(31,'listening part 4','listening test 11',null,now(),now()),
(32,'reading part 1','reading test 11 ',null,now(),now()),
(32,'reading part 2','reading test 11 ',null,now(),now()),
(32,'reading part 3','reading test 11 ',null,now(),now()),
(33,'writing part 1','writing test 11 ',null,now(),now()),
(33,'writing part 2','writing test 11 ',null,now(),now());
