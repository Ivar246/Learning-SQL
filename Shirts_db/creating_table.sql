-- create a table with name shirts

CREATE TABLE shirts(
shirt_id INT NOT NULL AUTO_INCREMENT,
article VARCHAR(20) NOT NULL,
color VARCHAR(15) NOT NULL,
shirt_size CHAR,
last_worn INT, 
PRIMARY KEY(shirt_id)
);