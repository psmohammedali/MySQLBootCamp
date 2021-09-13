
-- TODO: to show all the databases in my machine
-- SHOW DATABASES;

-- TODO: To create a database
-- CREATE DATABASE click_store;

-- TODO: TO drop a database
-- DROP DATABASE click_store;


-- TODO: To show which database is selected
-- SELECT database();

-- TODO: to select the database
-- USE photo_store;



-- TODO: Create Table 
-- CREATE TABLE cameras(
--     model_name VARCHAR(30),
--     quantity INT
-- );


-- TODO: To see the table Description
-- DESC cameras;

-- TODO: to show all the TABLES in SELECTED DATABASE
-- SHOW TABLES;


-- TODO: to delete the table in the database
-- DROP TABLE cameras;



-- TODO: created a table for canon_cameras
-- CREATE TABLE canon_cameras(
--     model_name VARCHAR(35),
--     quantity INT
-- );

-- TODO: Description of canon_cameras
-- DESC canon_cameras;


-- TODO: Inserting values into table 
-- INSERT INTO canon_cameras(model_name, quantity) VALUES 
-- ("70-D", 12),
-- ("80-D",19);

-- INSERT INTO canon_cameras(quantity, model_name) VALUES
-- (25,"EOS-R"),
-- (80,"EOS-R5"),
-- (50,"EOS-R6");

-- FIXME: answering the customer questions

-- TODO: what models do you have (ALL)
-- SELECT * FROM canon_cameras;

-- TODO: what models do you have (ONLY MODEL)
-- SELECT model_name FROM canon_cameras;

-- TODO: how many 80D are there?
-- SELECT quantity FROM canon_cameras WHERE model_name = "80-D";


-- TODO: select models having more than 50 (in quantity)
-- SELECT model_name, quantity FROM canon_cameras WHERE quantity>= 50;