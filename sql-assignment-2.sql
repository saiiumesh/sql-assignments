# display the details from customer table whose country is germany
select * from customer_and_products.customer where Country='germany';
# display fullname of employees from employee table
select concat(firstname,' ',lastname) as fullname from employee_database.employee_table;
# display customers who have fax number
select * from customer_and_products.customer having fax;
# display name whose second letter is u
select * from customer_and_products.customer where firstname like '_u%';
# select order details where unitprice is >10 and <20
select unitprice from customer_and_products.orderitem where unitprice between 10 and 20;
# display order details which contains shipping date and arrange the order by date
select * from customer_and_products.orderitem having shippingdate order by shippingdate;
# print orders shipped by lacornedabondance between 2 dates
select * from customer_and_products.orderitem where orderitem.shipname="lacornedabondance" and 
orderitem.shippingdate between 2017-06-06 and 2022-03-03;
#print the products supplied by exotic liquids
select * from customer_and_products.products where suppliername="exotic-liquids";
#print the average quantity ordered for every product
select avg(productquantity) as avg_quantity from customer_and_products.products;
#print all the shipping company names and shipnames
select shippingcompanyname,shipname from customer_and_products.orderitem;
#print all employees with managername
select concat(firstname,' ',lastname) as employeename,managername from employee_database.employee_table;



