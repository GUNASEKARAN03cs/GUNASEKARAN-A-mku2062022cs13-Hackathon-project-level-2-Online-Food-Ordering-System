SELECT * FROM Orders WHERE OrderStatus = 'Pending';

SELECT m.Category, SUM(od.Quantity * od.Price) AS TotalSales
FROM OrderDetails od
JOIN Menu m ON od.ItemID = m.ItemID
GROUP BY m.Category;

SELECT c.Name, o.OrderID, o.OrderDate, o.TotalAmount, o.OrderStatus
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
ORDER BY o.OrderDate DESC;
