create database pizzahut;

create table orders(
order_id INT not null,
order_date date not null,
order_time time not null,
primary key(order_id));


create table order_details(
order_details_id INT not null,
order_id INT not null,
pizza_id text not null,
quantity int not null,
primary key(order_details_id));