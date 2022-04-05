# query to display the orders placed by customer with phone number 030-0074321

SELECT 
    products.productname, shippers.shippername
FROM
    products
        RIGHT JOIN
    shippers ON products.productname = shippers.productname
WHERE
    phone = '030-0074321';
    

    
    
    
    