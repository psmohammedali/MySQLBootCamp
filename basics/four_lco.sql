-- FIXME: usage of Foriegn Key

-- CREATE DATABASE new_lco;
-- USE new_lco;
-- CREATE TABLE users(
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     email VARCHAR(50),
--     name VARCHAR(30)
-- );

-- CREATE TABLE purchases(
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     order_date DATE,
--     amount INT,
--     user_id INT,
--     FOREIGN KEY (user_id) REFERENCES users(id)
-- );


-- DESC users;
-- DESC purchases;

-- INSERT INTO users(name, email) VALUES
-- ("thor","thor@gmail.com"),
-- ("peter","peter@gmail.com"),
-- ("ali","ali@gmail.com"),
-- ("kevin","kevin@gmail.com"),
-- ("tony","toney@gmail.com");


-- SELECT * FROM users;

-- INSERT INTO purchases(order_date, amount, user_id) VALUES
-- ("2020-02-25",199,2);

-- INSERT INTO purchases(order_date, amount, user_id) VALUES
-- ("2020-02-25",199,5);
-- SELECT * FROM purchases;