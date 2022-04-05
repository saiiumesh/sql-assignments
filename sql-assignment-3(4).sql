#select all the order which are placed for the product Chai.

select product_id,productname from products p 
left join p.product_id=orderitem.orderitemid
where productname="chai";
