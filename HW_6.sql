1.Вывести стоимость заказа 10258

SELECT
COUNT(*) AS total
FROM OrderDetails
WHERE OrderID = 10258


2.Вывести количество /распределение заказов по клиентам (проекция: имя клиента, ко-возаказов)

SELECT
CustomerName,
Quantity
FROM OrderDetails
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID


3.Вывести кол/распределение заказов по менеджерам(проекция: фамилия менеджера, ко-во заказов)

SELECT
Quantity,
Employees.LastName
FROM OrderDetails
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID


4.Вывести минимальную стоимость товаров для каждой категории (проекция: название категории, мин стоимость_товаров)

SELECT
	MIN(Price) AS min_price,
    CategoryName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID

5.Вывести данные о заказах (проекция: номер заказа, стоимость заказа)

SELECT
OrderID,
Price
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID


6 и 7 не могу разобраться как делать, сделаю чуть позже