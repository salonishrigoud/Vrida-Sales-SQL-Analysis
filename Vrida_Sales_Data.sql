
-- Vrida Sales Data SQL Practice File

-- Drop tables if they already exist
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS OrderDetails;

-- Create Customers table
CREATE TABLE Customers (
  CustomerID INT, 
  CustomerName TEXT, 
  City TEXT, 
  Country TEXT
);

INSERT INTO Customers VALUES
(1, 'Aarav Shah', 'Mumbai', 'India'),
(2, 'Priya Mehta', 'Delhi', 'India'),
(3, 'Ravi Kumar', 'Bangalore', 'India'),
(4, 'Sneha Patel', 'Pune', 'India'),
(5, 'John Doe', 'New York', 'USA');

-- Create Products table
CREATE TABLE Products (
  ProductID INT, 
  ProductName TEXT, 
  Category TEXT, 
  Price FLOAT
);

INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Mouse', 'Electronics', 800),
(103, 'Keyboard', 'Electronics', 1500),
(104, 'Chair', 'Furniture', 3200),
(105, 'Table', 'Furniture', 7000);

-- Create Orders table
CREATE TABLE Orders (
  OrderID INT, 
  CustomerID INT, 
  OrderDate DATE, 
  TotalAmount FLOAT
);

INSERT INTO Orders VALUES
(201, 1, '2024-06-10', 56000),
(202, 2, '2024-06-11', 800),
(203, 3, '2024-06-12', 8700),
(204, 1, '2024-07-05', 5800),
(205, 4, '2024-07-08', 7000),
(206, 5, '2024-07-09', 55000);

-- Create OrderDetails table
CREATE TABLE OrderDetails (
  OrderDetailID INT, 
  OrderID INT, 
  ProductID INT, 
  Quantity INT
);

INSERT INTO OrderDetails VALUES
(1, 201, 101, 1),
(2, 202, 102, 1),
(3, 203, 104, 1),
(4, 203, 103, 2),
(5, 204, 104, 1),
(6, 205, 105, 1),
(7, 206, 101, 1);

-- Dataset ready for SQL practice
SELECT 'Dataset loaded successfully!' AS Message;
