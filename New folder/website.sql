drop database if exists website;
create database website;
use website;
create table suppliers(
id int(11) auto_increment primary key,
name varchar(100) not null,
email varchar(50) not null,
phone_number varchar(20),
address varchar(500)
);
create table categories(
id int(11) auto_increment primary key,
name varchar(50) not null,
description varchar(500)
);
create table products(
id int(11) auto_increment primary key,
name varchar(50) not null,
price decimal(18.2),
discount decimal(18.2),
category_id int(11),
supplier_id int(11),
description varchar(1000),
foreign key (category_id) references categories(id) on delete cascade,
foreign key (supplier_id) references suppliers(id) on delete cascade
);
create table employees(
id int(11) auto_increment primary key,
name varchar(45),
phone_number varchar(20),
address varchar(500) not null,
email varchar(50) not null,
birthday datetime
);
create table customers(
id int(11) auto_increment primary key,
name varchar(45) not null,
phone_number varchar(20),
address varchar(500) not null,
email varchar(50) not null,
birthday date
);
create table orders(
id int(11) auto_increment primary key,
created_date datetime not null,
shipped_date datetime,
description varchar(1000),
shipping_address varchar(500) not null,
payment_type varchar(20) not null,
customer_id int(11),
employee_id int(11),
foreign key (customer_id) references customers(id) on delete cascade,
foreign key (employee_id) references employees(id) on delete cascade
);
create table orderdetails(
id int(11) auto_increment primary key,
order_id int(11),
product_id int(11),
quantity decimal(18,2),
foreign key (order_id) references orders(id) on delete cascade,
foreign key (product_id) references products(id) on delete cascade
);