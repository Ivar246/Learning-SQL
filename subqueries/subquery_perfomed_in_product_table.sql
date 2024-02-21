-- 01.  Show the name , department and price of prouducts 
--      that are more expensive than all products in the industrial department


-- Solution->
    SELECT name, price, department FROM 
    products WHERE price > ALL (SELECT price FROM products WHERE department='Industrial')


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


-- 02.  Show the name of products that are 
--      more exprensive than at least one product in the 'Industrial' department

-- Solution->
    SELECT name, price, department FROM 
    products WHERE price > SOME (SELECT price FROM products WHERE department='Industrial');


-- 03. show name, department and price of the most expensive product in each department

-- Solution1->
    SELECT p.department, p.name, p.price 
    FROM products p
    INNER JOIN (
    SELECT department, MAX(price) AS max_price
    FROM products
        GROUP BY department
    ) AS max_prices 
    ON p.department = max_prices.department AND p.price = max_prices.max_price;


-- Output: 
        department  |           name            | price 
        -------------+---------------------------+-------
        Outdoors    | Gorgeous Steel Towels     |   412
        Grocery     | Gorgeous Concrete Towels  |   328
        Home        | Incredible Granite Mouse  |   989
        Books       | Gorgeous Rubber Ball      |   801
        Baby        | Handcrafted Rubber Towels |   945
        Games       | Practical Plastic Towels  |   379
        Movies      | Handmade Rubber Chicken   |   959
        Tools       | Tasty Rubber Soap         |   823
        Music       | Incredible Granite Bacon  |   982
        Electronics | Handmade Granite Fish     |   166
        Industrial  | Licensed Steel Towels     |   939
        Health      | Fantastic Cotton Shirt    |   496
        Sports      | Licensed Cotton Sausages  |   751
        Shoes       | Intelligent Plastic Car   |   628
        Clothing    | Sleek Fresh Gloves        |   919
        Kids        | Handcrafted Soft Chicken  |   720
        Garden      | Small Fresh Gloves        |   991
        Beauty      | Licensed Plastic Salad    |   834
        Computers   | Tasty Rubber Table        |   525
        Jewelery    | Refined Metal Tuna        |   708
        Toys        | Practical Steel Shoes     |   947


--  

