use Test;
create Database Demo;
drop database Demo;
use Test;
create table StudentRecord(
	Name varchar(100),
	Age varchar(10),
	Qualification varchar(50)
);

insert into StudentRecord values('Anil', '23', 'MCA');

insert into StudentRecord values('Shiva', '21', 'B.Tech');

insert into StudentRecord values('Harish', '19', 'B.Tech');

select * from StudentRecord;

select * from StudentRecord where Qualification='B.Tech';

select name from StudentRecord;

select distinct Name, Qualification from StudentRecord;

insert into StudentRecord values('Anil', '23','B.Sc.');

select * from StudentRecord where Name='Anil' and Qualification='MCA';

select * from StudentRecord where Name='Anil' or Qualification='MCA';

select * from StudentRecord where not Name='Anil';

select * from StudentRecord order by Name desc;

select * from StudentRecord order by Name asc;

select * from StudentRecord order by Age desc;

select Name, Age, Qualification from StudentRecord;

select * from StudentRecord where Qualification is null;

select * from StudentRecord where Qualification is not null;

update StudentRecord set Qualification='ECE' where Qualification='B.Tech';

select * from StudentRecord;

delete from StudentRecord where Qualification='B.Sc.';

select * from StudentRecord;

select top 50 percent * from StudentRecord;

select max(Age) from StudentRecord;

select min(Age) from StudentRecord;

select * from StudentRecord;

select count(Age) from StudentRecord where Age<20;

select avg(Age) from StudentRecord;

select * from StudentRecord where Name like 'a%';

select * from StudentRecord where Name like '%a';

select * from StudentRecord where Name like '%a%';

select * from StudentRecord where name like 'h%h';

select * from StudentRecord;

select * from StudentRecord where Age in('23', '19', '12');

select * from StudentRecord where Age between 20 and 23;

use Test;

select * from Orders;

select * from Customers;

select Customers.CustomerName, Orders.OrderName from Customers inner join Orders on Customers.CustomerID=Orders.CustomerID;

select Customers.CustomerName, Orders.OrderName from Customers left join Orders on Customers.CustomerID=Orders.CustomerID;

select Customers.CustomerName, Orders.OrderName from Customers right join Orders on Customers.CustomerID=Orders.CustomerID;

select Customers.CustomerName, Orders.OrderName from Customers full join Orders on Customers.CustomerID=Orders.CustomerID;
