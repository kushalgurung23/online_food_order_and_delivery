--Date: MAR-09-2021--

---Insert query for all tables---
--dish table--
create table dish(
dish_code varchar(6) primary key,
dish_name varchar(30) not null,
dish_rate number(5) not null,
local_name varchar(25) not null);

--restaurant table--
create table restaurant(
restaurant_id varchar(5) primary key,
restaurant_name varchar(30) not null,
restaurant_address varchar(60) not null,
contact_number varchar(10) not null);

--customer table--
create table customer(
customer_id varchar(5) primary key,
customer_name varchar(35) not null,
age number(3) not null,
address varchar(60) not null,
contact_number varchar(10) not null);

--delivery_address--
create table delivery_address(
delivery_id varchar(4) primary key,
delivery_point varchar(60) not null,
delivery_time varchar(15) not null,
delivery_cost number(5) not null);

--loyalty table--
create table loyalty(
loyalty_id varchar(8) primary key,
description varchar(130) not null,
loyalty_points number(3),
dish_code varchar(6) references dish(dish_code) not null,
restaurant_id varchar(5) references restaurant(restaurant_id) not null);

--order_details table--
create table order_details(
order_number varchar(8) primary key,
SN varchar(15) not null,
order_date date not null,
order_amount number(6) not null,
customer_id varchar(5) references customer(customer_id) not null,
delivery_id varchar(4) references delivery_address(delivery_id) not null,
dish_code varchar(6) references dish(dish_code) not null,
restaurant_id varchar(5) references restaurant(restaurant_id) not null,
status varchar(7) not null);

--dish_restaurant table--
create table dish_restaurant(
dish_code varchar(6) references dish(dish_code) not null,
restaurant_id varchar(5) references restaurant(restaurant_id) not null,
primary key(dish_code, restaurant_id),
dish_rate number(5) not null);


---insert query for all tables---
--dish table--
insert all
into dish values('CHKMO', 'Chicken Momo', 350, 'Dumplings')
into dish values('MIXCHT', 'Mixed Chatamari', 470, 'Nepali Pizza')
into dish values('VEGPAS', 'Vegetable Pasta', 150, 'Veg Pasta')
into dish values('BUFCH', 'Buff Chowmin', 140, 'Buff Chowmin')
into dish values('MIXPIZ', 'Mixed Pizza', 325, 'Mixed Pizza')
into dish values('CHKSHA', 'Chicken Shapale', 70, 'Chicken Shapale')
into dish values('BEENAN', 'Beef Nan', 75, 'Beef Nan')
into dish values('CHKTHA', 'Chicken Thakali Khana', 335, 'Nepali khana')
into dish values('MASDOS', 'Masala Dosa', 250, 'Masala Dosa')
into dish values ('CHKCHI', 'Chicken Chilli', 300, 'Chicken Chilli')
select * from dual;

--restaurant table--
insert all
into restaurant values('R1001', 'Feels Good', 'Lakeside, Pokhara', '9800000000')
into restaurant values('R1002', 'Thakali', 'New Road, Kathmandu', '9811111111')
into restaurant values('R1003', 'Dunga Restro', 'Lakeside, Pokhara', '9811200000')
into restaurant values('R1004', 'Anaki Restaurant', 'Naghdhunga-08, Pokhara', '9811113456')
into restaurant values('R1005', 'Bay Leaf Restaurant', 'Amarsingh, Pokhara', '9811144444')
into restaurant values('R1006', 'Sherpa Kitchen', 'Uttam Chowk, Pokhara', '9809876541')
into restaurant values('R1007', 'Shantiko Kitchen', 'Naya Bazar, Pokhara', '9846088888')
into restaurant values('R1008', 'Greasy Spoon Restaurant', 'Narayanghat, Chitwan', '9845908335')
into restaurant values('R1009', 'Jalapeno Restaurant', 'Kahun, Chitwan', '9889335578')
into restaurant values('R1010', 'Eat Street', 'Gaundakomukh-13, Pokhara', '9898078680')
select * from dual;

--customer table--
insert all
into customer values('C0001', 'Callum Hudson Odoi', 19, 'Sital Devi-12, Pokhara', '9801191111')
into customer values('C0002', 'Eden Hazard', 29, 'Bhajapatan-13, Pokhara', '9801111111')
into customer values('C0003', 'Mason Mount', 21, 'Ranipauwa-11, Pokhara', '4499089809')
into customer values('C0004', 'David Beckham', 45, 'Bijaypur-10, Pokhara', '9807765410')
into customer values('C0005', 'Paulo Dybala', 30, 'Laliguras, Pokhara', '9815167809')
into customer values('C0006', 'Timo Werner', 24, 'Amarsingh, Pokhara', '9819109870')
into customer values('C0007', 'Hakim Ziyech', 28, 'Hospital Chowk, Pokhara', '9800987610')
into customer values('C0008', 'Neymar Jr', 27, 'Lakeside, Pokhara', '9890876100')
into customer values('C0009', 'Tammy Abraham', 22, 'Mahendra Pool, Pokhara', '9890198001')
into customer values('C0010', 'Cristiano Ronaldo', 33, 'Chapapani-12, Pokhara', '9801176856')
into customer values('C0011', 'Romeo Lukaku', 28, 'Prithvi Chowk, Pokhara', '9800000059')
into customer values('C0012', 'Karim Benzema', 30, 'Milan Tole, Pokhara', '9111126855')
into customer values('C0013', 'Zlatan Ibrahimovich', 35, 'Sangam Tole, Pokhara', '9819176816')
into customer values('C0014', 'Billy Gilmour', 19, 'Srijana Chowk, Pokhara', '9801188760')
into customer values('C0015', 'Marcos Alonso', 28, 'Chisapani-13, Pokhara', '9809876781')
into customer values('C0016', 'Reece James', 20, 'Miyapatan-13, Pokhara', '9801667800')
into customer values('C0017', 'Thiago Silva', 33, 'Purandhara, Pokhara', '9801211345')
into customer values('C0018', 'Kushal Gurung', 20, 'Gaundakomukh-13, Pokhara', '9801111111')
into customer values('C0019', 'Kai Havertz', 21, 'Dhungesau, Pokhara', '9800145567')
into customer values('C0020', 'Toni Rudiger', 27, 'Shanti Tole, Pokhara', '9846098710')
into customer values('C0021', 'Jose Mourinho', 51, 'Charange, Butwal', '9806618256')
into customer values('C0022', 'Antonio Conte', 48, 'Maitri Path, Butwal', '9801087790')
into customer values('C0023', 'Roman Abramovich', 56, 'Amar Path, Butwal', '9802176889')
select * from dual;

--delivery_address table--
insert all
into delivery_address values('D001', 'Gaundakomukh-13, Pokhara', '30 minutes', 1500)
into delivery_address values('D002', 'Matepani-12, Pokhara', '40 minutes', 1600)
into delivery_address values('D003', 'Mahendra Pool, Pokhara', '20 minutes', 1000)
into delivery_address values('D004', 'Lakeside, Pokhara', '40 minutes', 2000)
into delivery_address values('D005', 'Hospital Chowk, Pokhara', '10 minutes', 500)
into delivery_address values('D006', 'Amarsingh, Pokhara', '15 minutes', 1200)
into delivery_address values('D007', 'Kahun, Chitwan', '25 minutes', 1000)
into delivery_address values('D008', 'Narayanghat, Chitwan', '30 minutes', 1300)
into delivery_address values('D009', 'Naghdhunga-08, Pokhara', '30 minutes', 1600)
into delivery_address values('D010', 'Sundhara, Kathmandu', '10 minutes', 500)
select * from dual;

--loyalty table--
insert all
into loyalty values ('2021L001', 'This loyalty is for Mixed Chatamari dish of Chelsea Hotel restaurant. It has 5 loyalty points.', 5, 'MIXCHT', 'R1003')
into loyalty values ('2021L002', 'This loyalty is for Chicken Momo dish of Feels Good restaurant. It has 5 loyalty points.', 5, 'CHKMO', 'R1001')
into loyalty values ('2021L003', 'This loyalty is for Vegetable Pasta dish of Thakali restaurant. It has 3 loyalty points.', 3, 'VEGPAS', 'R1002')
into loyalty values ('2021L004', 'This loyalty is for Buff Chowmin dish of Anaki restaurant. It has 5 loyalty points.', 5, 'BUFCH', 'R1004')
into loyalty values ('2021L005', 'This loyalty is for Mixed Pizza dish of Bay Leaf restaurant. It has 10 loyalty points.', 10, 'MIXPIZ', 'R1005')
into loyalty values ('2021L006', 'This loyalty is for Chicken Shapale dish of Sherpa Kitchen restaurant. It has 2 loyalty points.', 2, 'CHKSHA', 'R1006')
into loyalty values ('2021L007', 'This loyalty is for Beef Nan dish of Shantiko Kitchen restaurant. It has 1 loyalty point.', 1, 'BEENAN', 'R1007')
into loyalty values ('2021L008', 'This loyalty is for Chicken Thakali Khana dish of Greasy Spoon restaurant. It has 10 loyalty points.', 10, 'CHKTHA', 'R1008')
into loyalty values ('2021L009', 'This loyalty is for Masala Dosa dish of Jalapeno restaurant. It has 7 loyalty points.', 7, 'MASDOS', 'R1009')
into loyalty values ('2021L010', 'This loyalty is for Chicken Chilli dish of Eat Street restaurant. It has 4 loyalty points.', 4, 'CHKCHI', 'R1010')
select * from dual;

--order_details table--
insert all
into order_details values ('09-00232', '2020-11-223312', '12-NOV-20', 1700, 'C0001', 'D002', 'CHKMO', 'R1001', 'On Time')
into order_details values ('09-00233', '2020-11-223313', '12-NOV-20', 750, 'C0002', 'D001', 'MIXCHT', 'R1002', 'Early')
into order_details values ('09-00234', '2020-11-223314', '13-NOV-20', 500, 'C0003', 'D004', 'BEENAN', 'R1003', 'Late')
into order_details values ('09-00235', '2020-11-223315', '15-NOV-20', 900, 'C0004', 'D003', 'BUFCH', 'R1004', 'On Time')
into order_details values ('09-00236', '2020-11-223316', '16-NOV-20', 700, 'C0005', 'D006', 'CHKCHI', 'R1005', 'On Time')
into order_details values ('09-00237', '2020-11-223317', '16-NOV-20', 610, 'C0006', 'D005', 'CHKSHA', 'R1006', 'On Time')
into order_details values ('09-00238', '2020-11-223318', '16-NOV-20', 1010, 'C0007', 'D008', 'CHKTHA', 'R1007', 'Late')
into order_details values ('09-00239', '2020-12-223319', '10-DEC-20', 490, 'C0008', 'D007', 'MASDOS', 'R1008', 'On Time')
into order_details values ('09-00240', '2020-12-223320', '11-DEC-20', 740, 'C0009', 'D010', 'MIXPIZ', 'R1009', 'On Time')
into order_details values ('09-00241', '2020-12-223321', '24-DEC-20', 940, 'C0010', 'D009', 'VEGPAS', 'R1010', 'On Time')
into order_details values ('09-00242', '2020-11-223322', '24-DEC-20', 700, 'C0011', 'D002', 'CHKMO', 'R1010', 'On Time')
into order_details values ('09-00243', '2020-11-223323', '24-DEC-20', 900, 'C0012', 'D003', 'BUFCH', 'R1010', 'On Time')
into order_details values ('09-00244', '2020-11-223324', '24-DEC-20', 900, 'C0013', 'D006', 'VEGPAS', 'R1009', 'On Time')
into order_details values ('09-00245', '2020-11-223325', '26-DEC-20', 1200, 'C0014', 'D006', 'CHKMO', 'R1009', 'On Time')
into order_details values ('09-00246', '2020-11-223326', '26-DEC-20', 300, 'C0015', 'D007', 'CHKMO', 'R1007', 'On Time')
into order_details values ('09-00247', '2020-11-223327', '24-DEC-20', 550, 'C0016', 'D002', 'MIXCHT', 'R1007', 'On Time')
into order_details values ('09-00248', '2020-11-223328', '24-DEC-20', 725, 'C0017', 'D005', 'CHKTHA', 'R1001', 'On Time')
into order_details values ('09-00249', '2020-11-223329', '25-DEC-20', 325, 'C0018', 'D006', 'CHKSHA', 'R1006', 'Late')
into order_details values ('09-00250', '2020-11-223330', '25-DEC-20', 450, 'C0019', 'D007', 'MIXPIZ', 'R1006', 'Late')
into order_details values ('09-00251', '2020-11-223331', '25-DEC-20', 330, 'C0020', 'D008', 'VEGPAS', 'R1006', 'On Time')
into order_details values ('09-00252', '2020-11-223332', '26-DEC-20', 570, 'C0021', 'D003', 'MIXCHT', 'R1006', 'On Time')
into order_details values ('09-00253', '2020-11-223333', '26-DEC-20', 225, 'C0022', 'D005', 'BUFCH', 'R1006', 'On Time')
into order_details values ('09-00254', '2020-11-223334', '26-DEC-20', 325, 'C0023', 'D007', 'MIXCHT', 'R1009', 'On Time')
select * from dual;

--dish_restaurant table--
insert all
into dish_restaurant values ('CHKMO', 'R1001', 350)
into dish_restaurant values ('CHKMO', 'R1002', 370)
into dish_restaurant values ('CHKMO', 'R1003', 395)
into dish_restaurant values ('MIXCHT', 'R1001', 470)
into dish_restaurant values ('MIXCHT', 'R1002', 455)
into dish_restaurant values ('MIXCHT', 'R1003', 460)
into dish_restaurant values ('VEGPAS', 'R1004', 150)
into dish_restaurant values ('VEGPAS', 'R1005', 155)
into dish_restaurant values ('VEGPAS', 'R1006', 135)
into dish_restaurant values ('BUFCH', 'R1004', 140)
into dish_restaurant values ('BUFCH', 'R1005', 150)
into dish_restaurant values ('MIXPIZ', 'R1006', 325)
into dish_restaurant values ('MIXPIZ', 'R1007', 325)
into dish_restaurant values ('CHKSHA', 'R1007', 70)
into dish_restaurant values ('CHKSHA', 'R1008', 65)
into dish_restaurant values ('BEENAN', 'R1008', 75)
into dish_restaurant values ('BEENAN', 'R1009', 80)
into dish_restaurant values ('CHKTHA', 'R1009', 335)
into dish_restaurant values ('CHKTHA', 'R1010', 400)
into dish_restaurant values ('MASDOS', 'R1001', 250)
into dish_restaurant values ('MASDOS', 'R1010', 260)
into dish_restaurant values ('CHKCHI', 'R1009', 300)
into dish_restaurant values ('CHKCHI', 'R1010', 310)
select * from dual;


--select query for all tables--
select * from dish;
select * from restaurant;
select * from customer;
select * from delivery_address;
select * from loyalty;
select * from order_details;
select * from dish_restaurant;