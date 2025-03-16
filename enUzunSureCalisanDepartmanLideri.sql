SELECT TOP 1 
    e.BusinessEntityID,
    p.FirstName + ' ' + p.LastName AS FullName,
    d.Name AS DepartmentName,
    DATEDIFF(DAY, edh.StartDate, ISNULL(edh.EndDate, GETDATE())) AS DaysInDepartment
FROM HumanResources.EmployeeDepartmentHistory edh
JOIN HumanResources.Employee e ON edh.BusinessEntityID = e.BusinessEntityID
JOIN Person.Person p ON e.BusinessEntityID = p.BusinessEntityID
JOIN HumanResources.Department d ON edh.DepartmentID = d.DepartmentID
ORDER BY DaysInDepartment DESC;
---En Uzun Süre Çalýþan Departman Lideri---