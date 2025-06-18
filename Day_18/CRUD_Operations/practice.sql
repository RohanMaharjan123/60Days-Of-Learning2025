-- READ: Display all customers
SELECT * FROM Customers;

-- READ: Display customers from Nepal
SELECT * FROM Customers WHERE Country = 'Nepal';

-- UPDATE: Change city for a specific customer
UPDATE Customers
SET City = 'Lalitpur'
WHERE CustomerID = 1;

-- DELETE: Remove a customer
DELETE FROM Customers
WHERE CustomerID = 1;