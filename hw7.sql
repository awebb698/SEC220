USE store;
insert into customers(name) value ('Chewie');
insert into customers(name) value ('Han');
insert into customers(name) value ('Greedo');
insert into customers(name) value ('Luke');
insert into customers(name) value ('Leia'); #Id of 5
insert into customers(name) value ('Jabba'); #Id of 6
insert into customers(name) value ('Luke'); #Id of 7
insert into customers(name) value ('Gonk Droid'); #Id of 8
insert into customers(name) value ('Han Solo'); #Id of 9

insert into products(item, price) values ('Crossbow', 14.99);
insert into products(item, price) values ('Bolts', 4.99);
insert into products(item, price) values ('Bullets', 6.99);
insert into products(item, price) values ('Jet-Fuel', 49.99);
insert into products(item, price) values ('Saber', 34.99);

insert into orders(description, cust_id) value ('Crossbow', 1);
insert into orders(description, cust_id) value ('Bolts', 1);
insert into orders(description, cust_id) value ('Bullets', 2);
insert into orders(description, cust_id) value ('Jet-Fuel', 2);
insert into orders(description, cust_id) value ('Bullets', 3);
insert into orders(description, cust_id) value ('Saber', 4);

insert into order_product_association(order_id, product_id) values (1, 1);
insert into order_product_association(order_id, product_id) values (2, 2);
insert into order_product_association(order_id, product_id) values (3, 3);
insert into order_product_association(order_id, product_id) values (4, 4);
insert into order_product_association(order_id, product_id) values (5, 3);
insert into order_product_association(order_id, product_id) values (6, 5);

delete from customers where id = 5; #Leia
delete from customers where id = 6; #Jabba
delete from customers where id in (7, 8, 9); #Dupes and Gonk

select * from customers;
select * from orders;
select * from products;
select * from order_product_association;
select item, price from products;

select orders.description, customers.name
from orders
inner join customers on orders.cust_id = customers.id;

select orders.description, customers.name
from orders
inner join customers on orders.cust_id = customers.id
where description = 'Bullets';


select orders.description, customers.name
from orders
inner join customers on orders.cust_id = customers.id
where name = 'Han';