/**
* Database: Store
* Table: products
* Create a case statement that's named "price class" where if a product is over 20 dollars you show 'expensive'
* if it's between 10 and 20 you show 'average' 
* and of is lower than or equal to 10 you show 'cheap'.
*/
 SELECT 
 p.prod_id,p.title,p.price,
 CASE 
    WHEN p.price > 20 THEN 'expensive'
    WHEN p.price <=10 tHEN 'cheap'
    WHEN price BETWEEN 10 and 20 THEN 'average'
    END as "price class"
   
 from public.products as p
