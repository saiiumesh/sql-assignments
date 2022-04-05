use customer_and_products;
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    FirstName VARCHAR(40) NOT NULL,
    Lastname VARCHAR(40),
    City VARCHAR(40),
    Country VARCHAR(40),
    Phone VARCHAR(20)
);

create index CustomerName on customer_and_products.customer(Firstname,lastname);
insert into customer ( customer_id , Firstname , Lastname, City , Country,Phone)
values (1,'umesh','Nagavarapu','Vizag','India','9676081129');
insert into customer (customer_id , Firstname , Lastname, City , Country,Phone)
values (2,'naresh','aketi','wg','india','6300158612');
insert into customer (customer_id , Firstname , Lastname, City , Country,Phone)
values(3,'raham','shaik','bangalore','india','7075058750');
insert into customer (customer_id , Firstname , Lastname, City , Country,Phone)
values(4,'usha','sree','cdvm','india','7036236259');


SELECT 
    *
FROM
    customer_and_products.customer;
SELECT 
    *
FROM
    customer_and_products.customer
WHERE
    Country LIKE 'i%' OR Country LIKE 'a%';

SELECT 
    FirstName
FROM
    customer_and_products.customer
WHERE
    firstname LIKE '__i%';

#order table creation

use customer_and_products;
CREATE TABLE CustomerOrder (
    OrderId INT PRIMARY KEY,
    Orderdate DATETIME NOT NULL,
    ordernumber VARCHAR(10),
    customer_id INT,
    FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id),
    TotalAmount DECIMAL(12 , 2 )
);

create index OrderCustomerId on customer_and_products.customerorder(orderid);
create index OrderOrderdate on customer_and_products.customerorder(Orderdate);

#inserting_values_to_orders_table

insert into customer_and_products.customerorder
(OrderId,Orderdate,ordernumber,customer_id,TotalAmount)
values(101,'2022-03-03 13:21:55','01',1,555.66);
insert into customer_and_products.customerorder
(OrderId,Orderdate,ordernumber,customer_id,TotalAmount)
values(102,'2022-03-04 14:00:00','02',2,453.66);
insert into customer_and_products.customerorder
(OrderId,Orderdate,ordernumber,customer_id,TotalAmount)
values(103,'2022-03-06 09:09:09','03',3,656.75);
insert into customer_and_products.customerorder
(OrderId,Orderdate,ordernumber,customer_id,TotalAmount)
values(104,'2022-03-23 04:06:32','04',4,988.34);