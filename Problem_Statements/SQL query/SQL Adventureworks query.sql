use AdventureWorks2019;
SELECT TOP (1000) [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  SELECT * from [AdventureWorks2019].[HumanResources].[Employee];

--Question 1:
select datename(month,[HireDate]),count(1) as Emp_hired from [AdventureWorks2019].[HumanResources].[Employee]
group by DATENAME(month,[HireDate]);

--Question 2:
SELECT D.name, COUNT(E.loginID) as no_of_emp, Year([HireDate]) as year FROM [AdventureWorks2019].[HumanResources].[Employee] as E 
LEFT JOIN [AdventureWorks2019].[HumanResources].[EmployeeDepartmentHistory] as ED on E.[BusinessEntityID] =ED.[BusinessEntityID]
LEFT JOIN [AdventureWorks2019].[HumanResources].[Department] D ON D.DepartmentID =D.[DepartmentID] GROUP BY D.Name, Year([HireDate]);

--Question 3:
SELECT * from [AdventureWorks2019].[Person].[Person]
SELECT * from [AdventureWorks2019].[Person].[Address];

Select firstName from [AdventureWorks2019].[Person].[Person] where FirstName like 'S%' 
self join SELECT AddressLine1 from [AdventureWorks2019].[Person].[Address] as Address   ;


--Question 4:








