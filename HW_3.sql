-- 1. Вывести данные о товарах не из категорий 2 и 4 и не от поставщиков 2 и 3
-- с ценой от 20 до 90 EUR (проекция: название, цена с наценкой_6%)

SELECT
ProductName,
Products.Price * 1.06
FROM Products
WHERE
    CategoryID NOT IN (2, 4)
AND
    SupplierID NOT IN (2, 3)
AND
	Price >= 20
	AND
	Price <= 90


-- 2. Вывести клиентов не из Germany, имена которых не заканчиваются на букву t

SELECT *
FROM Customers
WHERE
	NOT Country = 'Germany'
AND
	NOT CustomerName LIKE '%t'


-- 3. Вывести два самых дешевых товара с ценой от 10 EUR и более
-- (проекция: название, ценасоскидкой_20%)

SELECT
ProductName,
Products.Price * .8
FROM Products
WHERE
    Price >= 10
LIMIT 2