create table students (
id integer,
name varchar (20),
gender varchar (6),
college varchar (50),
grade int NOT NULL ,
phone_No number(10) NOT NULL ,
primary key (id) 
);
insert into students values 
(1, 'Ahmed', 'male', 'Computer Science',10, 1234567890),
(2, 'Muhammad', 'male', 'Science',12, 2345678901),
(3,'Maha', 'female', 'Engineering', 10,3456789012),
(4, 'Reem', 'female', 'Nursing', 11, 4567890123) ,
(5,'khalid','male','Engineering',15,567890123),
(6,'badar','male','Science',13,6789012345),
  (7, 'sarah','female','Nursing',10,8901234567) ;
select name , gender from students ;
select name from students where gender ='female';
select * from students where college = 'nursing' ;
select name from students where name like '%m';
select name from students order by  name asc ;
select id from students order by  id desc ;

select * from students
  order by id desc;
select * from students 
where id > 3 ;
 select distinct college from students ;
begin transaction ;
alter table students rename to old_students ;
create table students (
id integer,
name varchar (20),
gender varchar (6),
college varchar (50),
primary key (id) 
);
insert into students values
(8	,'Talal',	'Male',	'Science' ),
(1	,'Ahmed',	'Male'	,'Computer Science'),
(2	,'Muhammad'	,'Male',	'Science'),
(3	,'Maha',	'Female'	,'Engineering');
commit;
select * from students ;
update students 
 set college = 'nursing'
 where id = 8;
select * from students ;
delete from students where id = 8 ;
select * from students ;
