INSERT INTO Customers (Name, Email, Phone, Address) VALUES
('Arun', 'arun@example.com', '1234567890', '123 Main St'),
('Smith', 'smith@example.com', '0987654321', '456 Elm St'),
('Nand', 'nand@example.com', '1234567890', '123 North St');

INSERT INTO Menu (ItemName, Category, Price) VALUES
('Burger', 'Fast Food', 5.99),
('Pizza', 'Italian', 8.99),
('Pasta', 'Italian', 7.50);

INSERT INTO Orders (CustomerID, TotalAmount, OrderStatus) VALUES
(1, 14.98, 'Pending');

INSERT INTO OrderDetails (OrderID, ItemID, Quantity, Price) VALUES
(1, 1, 2, 11.98),
(1, 3, 1, 7.50);

INSERT INTO Payments (OrderID, Amount, PaymentMethod, PaymentStatus) VALUES
(1, 19.48, 'Credit Card', 'Paid');
