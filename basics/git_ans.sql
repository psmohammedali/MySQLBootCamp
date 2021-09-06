SHOW tables;
-- SELECT customers.CustomerName, orders.OrderID, orders.OrderDate FROM 
-- customers INNER JOIN orders 
-- on orders.CustomerID = customers.CustomerID ORDER BY orders.OrderDate DESC LIMIT 1; 


-- TODO: get me order id, customer name, and who is the shipper for that order

-- SELECT customers.CustomerName, orders.OrderID, shippers.ShipperName, count(*) FROM 
-- customers INNER JOIN orders INNER JOIN shippers on 
-- customers.CustomerID = orders.CustomerID && shippers.ShipperID = orders.ShipperID GROUP BY shippers.ShipperName;


-- TODO: Get me all customers name and their order id
-- SELECT customers.CustomerName, orders.OrderID 
-- FROM customers JOIN orders ON 
-- customers.CustomerID = orders.CustomerID;