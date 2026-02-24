CREATE database if not exists school ;
DROP database school;
drop database if exists school;
drop database college;


create database school;
use school;

create table course(
cid int,
cname varchar(50)
);

INSERT INTO course(cid,cname)
VALUES (1,"PHY"),
(2,"CHEM");

SELECT * FROM course;

SHOW TABLES;