create database karva;
use karva;
create table student(
roll_no    int,
name   varchar (20) ,
city varchar  (20),
post varchar(20),
sallary int
);
insert into student value(
'21','rushabh','chembur','manager','50000');
insert into student value(
'22','shailesh','ghansoli','HR','45000');
insert into student value(
'23','sumit','jhugaoun','director','40000');
insert into student value(
'24','aamit','chembur','manager','60000');
insert into student value(
'25','mrunal','vashi','producer','55000');
insert into student value(
'26','raj','belapur','accountant','20000');
insert into student value(
'27','sushant','chembur','manager','42000');
                                  ########################## SELECT QUERY ##########################################################################
                                  
select * from student where sallary=(select max(sallary) from student);    #### max sallary
select * from student where sallary=(select min(sallary) from student);    #### min sallary
select * from student where city="chembur" and post="manager";             ### only want chembur city person but they are post also manager
select * from student where post="producer";                               ### only having producer post person
select * from student where sallary>50000;                                 ### greter than >
select * from student where sallary<50000;                                 ### less than <
select * from student where city='vashi';                                  ### only want info in vashi person
select * from student where name!="mrunal";                                ## not equl to
select * from student where sallary between 30000 and 50000;               ### between range
select * from student where sallary in (20000,45000,60000);                ### if exact only this given sallary want
select * from student where name="mrunal";                                 ### if we want given one person info
select sum(sallary) from student;                                          ### all total sallary
select count(*) from student;                                              ### total row
select avg(sallary)from student;                                           ### avg sallary
select * from student where sallary>(select avg(sallary) from student);    ###salary greater than avg salary##### > 44571 avg 
select * from student where sallary<(select avg(sallary) from student);    ###salary less than avg salary#####     < 44571 avg
select* from student where sallary=(select max(sallary) from student where sallary<(select max(sallary)from student));  ###  having 2nd highest sallary
select * from student where sallary=(select max(sallary)from student where sallary<(select max(sallary)from student where sallary<(select max(sallary)  from student)));  ### 3 rd highest person



#################################### UPDATE QUERY #################################################################3
update student set name="vinayak" where roll_no="24";                  ######## change name aamit to vinayak
update student set post="actor" where roll_no="21";
select* from student;