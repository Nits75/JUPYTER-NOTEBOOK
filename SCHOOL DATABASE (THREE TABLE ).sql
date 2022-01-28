create database elon;
use elon;
create table info(
id int auto_increment,
name text,
city varchar(20),
subject varchar(20),
score int(20),
primary key(id)
);
select* from info;

insert into info value('1','raj','nerul','english','56');
insert into info value('2','govinda','vashi','maths','70');
insert into info value('3','mahendra','rabale','marathi','80');
insert into info value('4','suhas','shirvane','coding','55');

alter table info add
sports varchar(20);

update info set sports='khokho'where id=1;
update info set sports='tenis'where id=2;
update info set sports='cricet'where id=3;
update info set sports='hocky'where id=4;

create table batch(
sallary int,
card_no int,
car text,
foreign key(card_no)references info(id));
select* from batch;
insert into batch value('25000','4','tata');
insert into batch value('28000','2','honda');
insert into batch value('60000','3','suzuki');
insert into batch value('15000','1','venue');

select* from info where city='vashi';
select* from info where city='nerul' and score='70';
select* from info where score='70';
select* from info where score<'70';
select* from info where score>'70';
select* from info where name='raj';

create table hp(
user_id int,
zender text,
age int,
post text,
primary key(user_id),
foreign key(user_id)references batch(card_no)
);
select* from hp;
insert into hp value('2','male','20','teacher');
insert into hp value('4','male','35','principal');
insert into hp value('3','male','27','driver');
insert into hp value('1','male','45','hr');
select * from info;
select * from batch;
select * from hp;
select* from info,batch,hp;

select info.id,info.name,info.city,batch.card_no,batch.car from info inner join batch on info.id=batch.card_no;
select info.id,info.city,info.subject,batch.card_no,batch.sallary from info join batch on info.id=batch.card_no;
select info.id,info.city,info.name,info.subject,batch.card_no,batch.car,batch.sallary from info inner join batch on info.id=batch.card_no;
select info.id,info.city,batch.card_no,batch.sallary from info inner join batch on info.id=batch.card_no;
select* from info inner join batch on info.id=batch.card_no;
select * from info left join batch on info.id=batch.card_no;
select * from info right join batch on info.id=batch.card_no;



select batch.sallary,batch.card_no,batch.car,hp.user_id,hp.age,hp.post from batch inner join hp on batch.card_no=hp.user_id;
select batch.card_no,batch.car,hp.user_id,hp.post from batch inner join hp on batch.card_no=hp.user_id;

                       ######## three table join ###########
select* from info inner join batch on info.id=batch.card_no inner join hp on batch.card_no=hp.user_id;
select* from info right join batch on info.id=batch.card_no right join hp on batch.card_no=hp.user_id;
select * from info left join batch on info.id=batch.card_no left join hp on batch.card_no=hp.user_id;





