--Cleansed DIM_Customers Table
SELECT c.[CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.[FirstName]
      --,[MiddleName]
      ,c.[LastName]
	  ,c.FirstName + ' ' + c.LastName as FullName
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,case c.[Gender] when 'M' then 'Male'
	                   when 'F' then 'Femal'
					   end as Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.[DateFirstPurchase]
      --,[CommuteDistance]
	  ,g.city as CustomerCity -- joined in Customer City from Geography Table
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  left join dbo.DimGeography as g
  on g.GeographyKey = c.GeographyKey
  order by CustomerKey asc