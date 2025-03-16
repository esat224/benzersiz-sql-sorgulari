SELECT TOP 1 
    e.BusinessEntityID,
    p.FirstName + ' ' + p.LastName AS FullName,
    COUNT(edh.DepartmentID) AS DepartmentChanges
FROM HumanResources.EmployeeDepartmentHistory edh
JOIN HumanResources.Employee e ON edh.BusinessEntityID = e.BusinessEntityID
JOIN Person.Person p ON e.BusinessEntityID = p.BusinessEntityID
GROUP BY e.BusinessEntityID, p.FirstName, p.LastName
ORDER BY DepartmentChanges DESC;
---Departmanlar Aras� En �ok G�rev Alan , De�i�tiren �al��an---