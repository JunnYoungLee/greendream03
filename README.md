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

create table stock(
	dept varchar(10),
    medical_supply_code varchar(100),
    medical_supplies_name varchar(100),
    standard varchar(50),
    unit varchar(20),
    supplier varchar(50),
    unit_price int,
    current_quantity int,
    safety_inventory_quantuty int,
    warehousing_quantity int
);

create table medical_supplies_information(
	medical_supply_code varchar(100),
    medical_supplies_name varchar(100),
    standard varchar(50),
    unit varchar(20),
    unit_price int,
    supplier varchar(50),
    used_dept varchar(10),
    detail varchar(255)
);

create table medical_order(
	dept varchar(10),
	medical_supply_code varchar(100),
    medical_supplies_name varchar(100),
    standard varchar(50),
    unit varchar(20),
    supplier varchar(50),
    unit_price int,
    order_quantity int,
    supply_price int,
    surtax int,
    total_price int,
    person_in_charge varchar(20),
    order_date date,
    special_note varchar(200),
    Progress_status varchar(50)
);

create table supplier(
	supplier varchar(50),
    business_number varchar(100),
    location varchar(100),
    person_in_charge varchar(20),
    contact_information varchar(30),
    email varchar(100)
);

create table request_check(
	dept varchar(10),
	medical_supply_code varchar(100),
    medical_supplies_name varchar(100),
    standard varchar(50),
    unit varchar(20),
    supplier varchar(50),
    unit_price int,
    current_quantity int,
    safety_inventory_quantuty int,
    request_quantity int,
    person_in_charge varchar(20),
    date date,
    special_note varchar(200),
    progress_status varchar(50)
);

create table consumption_check(
	dept varchar(10),
    medical_supply_code varchar(100),
    medical_supplies_name varchar(100),
    standard varchar(50),
    unit varchar(20),
    used_quantity int,
    current_quantity int,
    date date,
    person_in_charge varchar(20)
);
