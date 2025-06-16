CREATE TABLE UnnormalizedOrders (
    OrderID INT,
    CustomerName VARCHAR(100),
    Products VARCHAR(255), -- "Apple,Banana"
    Quantities VARCHAR(100) -- "2,1"
);

CREATE TABLE Orders1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100),
    Quantity INT
);

-- Insert normalized rows
INSERT INTO Orders1NF VALUES (1, 'Alice', 'Apple', 2);
INSERT INTO Orders1NF VALUES (1, 'Alice', 'Banana', 1);
INSERT INTO Orders1NF VALUES (2, 'Bob', 'Carrot', 4);


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);