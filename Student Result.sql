create database studenttt;
use studenttt;
show tables;
-- 1 show the schema of the tables
desc marks;
select * from marks
-- 2 add primary key in table scores at id column
alter table scores add primary key(Id); 
-- 3 create second table named as perform with foreign key
create table perform(id int,name varchar(50),foreign key(id) references scores(id));
desc perform;
-- 4 show whole record of table scores
select * from marks;
-- 5 rename table scores to marks
 alter table scores rename marks;
 show tables;
 -- 6 change column name id to s_id.
 alter table marks rename column id to s_id;
 desc marks;
 select distinct gender from marks;
 Select * from marks where last_name LIKE 'S%';
 Select * from marks order by math_score desc;
 select first_name,last_name,history_score From marks where history_score>80;
 Select count(*) AS total_student from marks;
 Select max(english_score) AS student_perform From marks;
 Select min(english_score) AS student_perform From marks;
 select s_id,first_name,last_name,chemistry_score from marks where chemistry_score IN(70,80,90);
 select s_id,first_name,last_name from marks where first_name Like "c%";
 select upper(first_name) as uppercase,first_name from marks limit 5;
 select now() as cur_date;
 select curdate();
 select count(s_id) as number_of_students from marks;
select first_name,count(math_score) from marks where math_score<80 group by first_name having count(*)>3;

select concat(first_name,last_name) as fullname from marks;

drop table student_ids;

create table student_ids(student_id int,reading_score int,
writing_score int,placement_score int,club_join_date varchar(10), 
foreign key (student_id) references marks(s_id));
desc student_ids;

select * from student_ids;

select * from student_ids inner join marks 
on students_ids.student_id=marks.s_id;

select * from student_ids
inner join marks on student_ids.student_id = marks.s_id

select * from student_ids
left outer join marks on student_ids.student_id = marks.s_id;

select * from student_ids
Cross join marks on student_ids.student_id = marks.s_id;

create view detail_view
as select * from marks where math_score>90;
select * from detail_view;



