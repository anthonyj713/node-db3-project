-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT p.productName, c.CategoryName
FROM category AS c
JOIN product as p ON p.CategoryId = c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.id, s.CompanyName, o.OrderDate
FROM [order] AS o
JOIN shipper AS s on o.ShipVia = s.Id
WHERE o.OrderDate < '2012-08-09';


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p.productName, o.quantity
FROM product AS p
JOIN orderDetail AS o ON p.Id = o.ProductId
WHERE o.orderId = 10251
ORDER BY p.productName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.Id, c.CompanyName, e.LastName
FROM [order] AS o
JOIN customer AS c ON c.Id = o.customerId
JOIN employee AS e ON e.Id = o.employeeId;