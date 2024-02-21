-- problem:  show name, department and price of the most expensive product in each department

-- solution->
    SELECT name, department, price FROM products AS p1
    WHERE price=(SELECT max(price) FROM products AS p2 WHERE p2.department=p1.department);

-- Output2
                name            | department  | price 
        ---------------------------+-------------+-------
        Gorgeous Steel Towels     | Outdoors    |   412
        Gorgeous Concrete Towels  | Grocery     |   328
        Incredible Granite Mouse  | Home        |   989
        Gorgeous Rubber Ball      | Books       |   801
        Handcrafted Rubber Towels | Baby        |   945
        Practical Plastic Towels  | Games       |   379
        Handmade Rubber Chicken   | Movies      |   959
        Tasty Rubber Soap         | Tools       |   823
        Incredible Granite Bacon  | Music       |   982
        Handmade Granite Fish     | Electronics |   166
        Licensed Steel Towels     | Industrial  |   939
        Fantastic Cotton Shirt    | Health      |   496
        Licensed Cotton Sausages  | Sports      |   751
        Intelligent Plastic Car   | Shoes       |   628
        Sleek Fresh Gloves        | Clothing    |   919
        Handcrafted Soft Chicken  | Kids        |   720
        Small Fresh Gloves        | Garden      |   991
        Licensed Plastic Salad    | Beauty      |   834
        Tasty Rubber Table        | Computers   |   525
        Refined Metal Tuna        | Jewelery    |   708
        Practical Steel Shoes     | Toys        |   947


-- without using a join or a group by, print the number of orders for each product 

-- Solution: 
    SELECT name, (
        SELECT COUNT(*) FROM orders AS o1 Where p1.id=o1.product_id
    ) AS order_count FROM products As p1;

-- Output