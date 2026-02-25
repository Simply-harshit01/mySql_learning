CREATE DATABASE constraints;

USE constraints;

                   -- uniqueness

CREATE TABLE student(
stname varchar(50),
rollno int UNIQUE
);

INSERT INTO student(stname,rollno)
VALUES
("he",12),
("she",13),
("he",14);

					 -- not null


CREATE TABLE student1(
rollno int,
dob int NOT NULL
);

INSERT INTO student1(rollno,dob)
VALUES (12,13072022);



                    -- check constraints

CREATE TABLE student3(
age int CHECK(age>18)
);

INSERT INTO student3(age)
VALUES(19);


					-- default constraints

CREATE TABLE student5(
sname VARCHAR(50),
schname VARCHAR(50) DEFAULT 'xyz'
 );
 
 INSERT INTO student5(sname)
 VALUES ('HE');
 
 SELECT * FROM student5;


                   -- primary key consrtaints

CREATE TABLE student7(
rollno int PRIMARY KEY,
sname VARCHAR(50)
);

-- uniqueness

INSERT INTO student7(rollno,sname)
VALUES(1,'HE'),
(2,'HER'),
(1,'HIS');

-- not null

INSERT INTO student7(sname)
VALUES('HE'),
('HER'),
('HIS');



                     -- foreign key constraints
                     
                     
CREATE TABLE course(
crsid int ,
rollno int ,
FOREIGN KEY (rollno) REFERENCES student7(rollno)
);                   
                     