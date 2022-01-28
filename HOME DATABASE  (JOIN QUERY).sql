create database home;
use home;
create table student(
name   varchar (20) ,
city varchar  (20),
sallary int,
primary key(name)
);
insert into member value("sky","22","vashi","15000");
insert into member value("raj","14","nerul","18000");
insert into member value("john","20","belapur","20000");
insert into member value("bob","25","panvel","25000");

############# second table##################3
create table legend(
name   varchar (20) ,
car varchar  (20),
mobile varchar(20),
weight int(20)
);
insert into legend value("sky","tata","nokia","55");
insert into legend value("raj","suzuki","samsung","70");
insert into legend value("john","mahindra","jio","40");
insert into legend value("bob","ford","mi","90");

select * from member;
delete from member where name="sky"
select * from member;
select member.name,member.age,legend.name,legend.weight,legend.car from member inner join legend on member.name=legend.name;

select * from member inner join legend on member.name=legend.name;

select * from member m inner join legend l on m.name=l.name;

select * from legend left outer join member on member.name=legend.name where member.salary>25000;
select * from member,legend;  ###cross join

select * from legend right outer join member on member.name=legend.name 
union                                                                      ##### full join
select * from legend left outer join member on member.name=legend.name