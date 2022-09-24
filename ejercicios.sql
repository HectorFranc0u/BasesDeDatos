-- Practica Bases de datos
use Northwind;

--Utilice la función COUNT para obtener la cantidad de empleados agrupados por ciudad.

SELECT  City, COUNT(City) Empleados FROM Employees WHERE City IN(SELECT City FROM [EmployeeTerritories]) GROUP BY City

-- Muestra el número de clientes, la primera fecha y la fecha más reciente de la tabla orders.

select Count(CustomerID) "Numero de clientes", 
min(OrderDate) "Orden mas antigua", 
max(OrderDate) "Orden mas reciente" 
from Orders;

-- Mostrar companyName de la tabla customers, en donde el país sea Mexico y la región no sea NULL.

SELECT CompanyName Compania, Country Pais FROM Customers WHERE Country = 'Mexico' and Region IS NOT NULL

/*Mostrar la cantidad de pedidos realizados por un cliente de la tabla orders en donde
los pedidos sean mayores a 5 y menores a 10 (Muestre 3 resultados, el primero
utilizando >=,<=; el segundo utilizando BETWEEN y el tercero utilizando IN).*/

select CustomerID from Orders where COUNT(OrderDate) >= 5 AND COUNT(OrderDate) <= 10

-- Contar los nombres de productos que inician con la letra C

SELECT COUNT(ProductName) Productos FROM Products WHERE ProductName LIKE 'C%';
