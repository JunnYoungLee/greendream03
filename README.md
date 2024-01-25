----------------------------------------------------1차 프로젝트 greendream -------------------------------------------------------------------

create database greendream; create table greendream( id varchar(10) primary key, pw varchar(20), name varchar(10) );

insert into greendream values('abcd1234','1234','홍길동');

----------------------------------------------------2차 프로젝트 greendream2 -------------------------------------------------------------------

create database mydb; create table dht ( hdb varchar(4), -- 온도 tdb varchar(4), -- 습도 dtim varchar(20) -- 로그시간 );

use mydb; 

----------------------------------------------------3차 프로젝트 greendream3 -------------------------------------------------------------------

create database greenHospital; use greenHospital;

create table membership ( name varchar (30), password varchar (12), dept varchar (15), brh varchar (6), email varchar(30), pn varchar(15) );

select * from membership;
