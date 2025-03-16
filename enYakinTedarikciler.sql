SELECT TOP 1 
    v1.Name AS Vendor1,
    v2.Name AS Vendor2,
    a1.City AS City,
    a1.PostalCode AS PostalCode
FROM Purchasing.Vendor v1
JOIN Person.BusinessEntityAddress bea1 ON v1.BusinessEntityID = bea1.BusinessEntityID
JOIN Person.Address a1 ON bea1.AddressID = a1.AddressID
JOIN Purchasing.Vendor v2 ON v1.BusinessEntityID < v2.BusinessEntityID
JOIN Person.BusinessEntityAddress bea2 ON v2.BusinessEntityID = bea2.BusinessEntityID
JOIN Person.Address a2 ON bea2.AddressID = a2.AddressID
WHERE a1.PostalCode = a2.PostalCode  -- Ayný posta koduna sahip olanlar
ORDER BY v1.Name;
---Birbirine En Yakýn Ýki Tedarikçi---