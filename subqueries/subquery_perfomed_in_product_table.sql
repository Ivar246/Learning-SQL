-- Show the name , department and price of prouducts 
--  that are more expensive than all products in the industrial department


-- Solution->
    SELECT name, price, department FROM 
    products WHERE price > All (SELECT price FROM products WHERE department='Industrial')


-- Output:

           name            | price | department 
---------------------------+-------+------------
 Incredible Granite Mouse  |   989 | Home
 Handcrafted Rubber Towels |   945 | Baby
 Practical Rubber Mouse    |   948 | Garden
 Handmade Rubber Chicken   |   959 | Movies
 Awesome Fresh Keyboard    |   982 | Home
 Incredible Granite Bacon  |   982 | Music
 Fantastic Fresh Chips     |   966 | Home
 Small Fresh Gloves        |   991 | Garden
 Practical Steel Shoes     |   947 | Toys
