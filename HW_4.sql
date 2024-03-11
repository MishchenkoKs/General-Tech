-- 1. Вывести данные о товарах (проекция: название товара, цена,
-- название категории, название компании поставщика)

SELECT
Products.ProductName,
Products.Price AS Price_full,
Categories.CategoryName,
Suppliers.SupplierName
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID


-- 2. Вывести заказы клиентов не из France  (номер заказа, имя клиента, страна_клиента)

SELECT
Orders.OrderID,
Customers.CustomerName,
Customers.Country
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE
	NOT Country = 'France'


-- 3. Вывести название и стоимость в USD одного самого дорогого проданного товара

SELECT
Products.ProductName,
Products.Price AS USDPrice
FROM Products
ORDER BY Price DESC
LIMIT 1


-- 4. Вывести список стран, которые поставляют морепродукты

SELECT
Suppliers.Country,
Categories.CategoryID
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE
    CategoryName = 'Seafood'


-- 5. Вывести два самых дорогих товара из категории Beverages из USA

SELECT
Products.ProductName,
Categories.CategoryID
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE
    CategoryName = 'Beverages'
    AND
    Country = 'USA'
ORDER BY Price DESC
LIMIT 2