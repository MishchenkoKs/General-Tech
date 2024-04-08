1.Вывести ко-во поставщиков не из UK и не из China

SELECT
COUNT(*) AS total
FROM Suppliers
WHERE
NOT Country IN ('UK', 'China')

2.Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5

SELECT
	MAX(Price) AS max_price,
	MIN(Price) AS min_price,
    AVG(price) AS average_price,
    COUNT(*) AS total
FROM Products
WHERE
	CategoryId IN (3,5)

 3.Вывести общую сумму проданных товаров

SELECT
COUNT(*) AS total
FROM OrderDetails

4.Вывести данные о заказах (номер заказа, имяк лиента, страна клиента,фамилия менеджера, название компании перевозчика)

SELECT
Orders.OrderID,
Customers.CustomerName,
Customers.Country,
Employees.LastName,
Shippers.ShipperName
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID

5.Вывести сумму, на которую было отправлено товаров клиентам в Germany

SELECT
COUNT(*) AS total
FROM OrderDetails
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE
Country = 'Germany'