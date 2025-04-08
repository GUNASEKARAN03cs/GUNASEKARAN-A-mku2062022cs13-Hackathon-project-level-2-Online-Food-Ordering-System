CREATE DATABASE OnlineFoodOrdering;

CREATE TABLE Customers (
    CustomerID INT IDENTITY (1,1)PRIMARY KEY,
    Name NVARCHAR(100),
    Email NVARCHAR(100) UNIQUE,
    Phone NVARCHAR(15),
    Address CHAR
);

CREATE TABLE Menu (
    ItemID INT IDENTITY (1,1)PRIMARY KEY,
    ItemName NVARCHAR(100),
    Category NVARCHAR(50),
    Price DECIMAL(10,2),
    Availability CHAR(1) DEFAULT 'Y' CHECK (Availability IN ('Y', 'N'))
);

CREATE TABLE Orders (
    OrderID INT IDENTITY (1,1)PRIMARY KEY,
    CustomerID INT,
    OrderDate DATETIME DEFAULT GETDATE(),
    TotalAmount DECIMAL(10,2),
    OrderStatus NVARCHAR(20) CHECK (OrderStatus IN ('Pending', 'Processing', 'Delivered', 'Cancelled')),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT IDENTITY (1,1)PRIMARY KEY,
    OrderID INT,
    ItemID INT,
    Quantity INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ItemID) REFERENCES Menu(ItemID)
);

CREATE TABLE Payments (
    PaymentID INT IDENTITY (1,1)PRIMARY KEY,
    OrderID INT,
    PaymentDate DATETIME DEFAULT GETDATE (),
    Amount DECIMAL(10,2),
    PaymentMethod NVARCHAR(20) CHECK (PaymentMethod IN ('Credit Card', 'PayPal', 'Cash on Delivery')),
    PaymentStatus NVARCHAR(20) CHECK (PaymentStatus IN ('Paid', 'Pending', 'Failed')),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
