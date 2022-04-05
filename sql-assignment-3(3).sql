#Display the orders placed by customers not in London

select * from customer_and_products.customer where Country not in ("london");