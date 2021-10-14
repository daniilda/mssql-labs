-------------------------------------------------------------------------
-- Лабораторная 3
-------------------------------------------------------------------------
select CST.CompanyName, SOH.SalesOrderID, SOH.TotalDue
from SalesLT.Customer as CST
join SalesLT.SalesOrderHeader as SOH on CST.CustomerID = SOH.CustomerID
-------------------------------------------------------------------------
select CST.CompanyName, SOH.SalesOrderID, SOH.TotalDue, AddressLine1, AddressLine2, City, StateProvince,PostalCode, CountryRegion
from SalesLT.Customer as CST
join SalesLT.SalesOrderHeader as SOH on CST.CustomerID = SOH.CustomerID
inner join SalesLT.CustomerAddress as CA on SOH.CustomerID = CA.CustomerID
inner join SalesLT.Address as A on CA.AddressID = A.AddressID
where CA.AddressType = 'Main Office'
-------------------------------------------------------------------------
-------------------------------------------------------------------------