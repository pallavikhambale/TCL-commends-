## TCL Commands   --- ACID properties

use hello;
Create table draw (dname varchar(20), painter varchar (20));
Select * from draw;

start transaction;
insert into draw values ("scene", "praju");

select * from draw;

rollback;
insert into draw values ("waterfall", "viju");
commit;
rollback;

update draw set dname ="portrait" where dname = "waterfall";

drop table  draw;

savepoint first;

insert into draw values ("portrait", "john");
insert into draw values ("Animal", "raghav");

savepoint two;
insert into draw values ("birds", "vidya");

rollback to two;

rollback to first;

select * from draw;
rollback;





create table employee
(Eid int primary key auto_increment, ename varchar(20), age int);

insert into employee (ename, age) values ("rajesh",26);
insert into employee (ename, age) values ("raju",27);
insert into employee (ename, age) values ("raj",28);

select * from employee;

alter table employee auto_increment =100;

insert into employee (ename, age) values ("ramu",29);
select * from employee;
insert into employee (ename, age) values ("renu",25);
select * from employee;


delete from employee;
select * from employee;

insert into employee (ename, age) values ("ritu",26);

truncate table employee;
select * from employee;

insert into employee (ename, age) values ("renu",25);


select * from office;




###  Views

## View is a virtual or temporary table, where it cannot hold any data.
## it helps us in hiding my Query. also it helps in reducing the pain of writing same lengthy query again.

select * from authors;
select * from books;


Select aid, name, 
ifnull(title, "Unpublished") as bo, 
ifnull(name, "Unknown") as aut 
from authors
left join books
on Authors.aid = books.authorid;

create view hello as 
Select aid, name, title
from authors
left join books
on Authors.aid = books.authorid;

Select aid, name, title
from authors
left join books
on Authors.aid = books.authorid;




select * from hello;

desc hello;

show tables;

select * from office;

select * from office where emp_dept = "HR";

create view HRM as
select * from office where emp_dept = "HR";

select * from hrm;
select * from office;

insert into HRM values (35,"King", "MSC","Pune",1151,"VP", "HR",70000,8,104,"2021-10-10");
insert into HRM values (34,"Queen", "MSC","Delhi",1154,"Manager", "IT",70000,8,104,"2020-1-1");

drop view HRM;

create view HRM as
select * from office where emp_dept = "HR" with check option;

insert into HRM values (34,"Queen", "MSC","Delhi",1154,"Manager", "IT",70000,8,104,"2020-1-1");


