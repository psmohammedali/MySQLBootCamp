-- SHOW DATABASES;

-- TODO: create table for customer with name, id, email, amount
-- CREATE TABLE customers(
--     id INT NOT NULL AUTO_INCREMENT,
--     name VARCHAR(30) NOT NULL,
--     email VARCHAR(50) NOT NULL DEFAULT "EMAIL NOT PROVIDED",
--     amount INT,
--     PRIMARY KEY (id)
-- );

-- DESC customer;


-- TODO: Rename the table name
-- ALTER TABLE customer RENAME TO customers;


-- TODO: Alter datatype 
-- ALTER TABLE customers MODIFY email VARCHAR(50) ;

-- TODO: Insert values into table customer
-- INSERT INTO customers (name, email, amount) VALUES
-- ("mohammed ali","psmohammedali4@gmail.com",100);

-- TODO: Drop email column;
-- ALTER TABLE customers DROP email;

-- TODO: Add email column
-- ALTER TABLE customers MODIFY COLUMN email VARCHAR(50) NOT NULL DEFAULT "NOT PROVIDED";

-- DESC customers;

-- TODO: Drop the customers table
-- DROP TABLE customers;

-- ALTER TABLE customer RENAME TO customers;



-- TODO: Inserting the values according to the course file
-- ('hitesh', 'hitesh@lco.dev', 35),
-- --         ('George', 'geo@lco.dev', 45),
-- --         ('hitesh', 'hitesh@gmail.com', 88),
-- --         ('lina', 'lina@gmail.com', 78),
-- --         ('Jimmy', 'jimmy@yahoo.co.in', 54),
-- --         ('lina', 'lina@yahoo.co.in', 35),
-- --         ('hitesh', 'hitesh@yahoo.co.in', 56);


-- INSERT INTO customers(name, email, amount) VALUES
-- ("hitesh", "hitesh@lco.dev",35),
-- ("George","geo@lco.dev",45),
-- ("hitesh","hitesh@gmail.com",88),
-- ("lina","lina@gmail.com",78),
-- ("Jimmy","jimmy@yahoo.co.in",54),
-- ("lina","lina@yahoo.co.in",35),
-- ("hitesh","hitesh@yahoo.co.in",56);


-- FIXME: Answering to customer question

-- TODO: names of the customers
-- SELECT name AS "CUSTOMER NAME" FROM customers;

-- TODO: email of the customers
-- SELECT email AS "CUSTOMER EMAIL ID" FROM customers;

-- TODO: All purchases of the customers
-- SELECT distinct(name), amount AS "AMOUNT GIVEN BY CUSTOMER" FROM customers;


-- TODO: jimmy email was entered incorrectly, edit it to jimmy@yahoo.com

-- UPDATE customers SET email = "jimmy@yahoo.com" WHERE id = 5;

-- FIXME:TODO:FIXME: 
-- UPDATE customers SET email="jimmy@yahoo.com" where id = SELECT id FROM customers WHERE name = "jimmy";

-- TODO: Lina's purchase was not of 35 but it was of 38

-- UPDATE customers SET amount = 38 WHERE name = "lina" AND amount = "35";

-- TODO: Change email of all lina to lina@gmail.com
-- UPDATE customers SET email = "lina@gmail.com" WHERE name = "lina";

-- TODO: Delete name with George 
    -- DELETE FROM customers WHERE id = 2;

-- TODO: Delete all hitesh account
    -- SELECT * FROM customers WHERE name = "hitesh";
    -- DELETE FROM customers WHERE NAME = "hitesh";

-- TODO: Delete all lina Account
    -- SELECT * FROM customers WHERE name = "lina";
    -- DELETE FROM customers WHERE name = "lina";