--Cleansed DIM_Product Table
SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] as ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] as ProductName
	  ,ps.EnglishProductSubcategoryName as SubCategory --joined in from SubCategory table
	  ,pc.EnglishProductCategoryName as ProductCategory --joined in from Category table
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,p.[Color] as ProductColor
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] as ProductSize
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName] as ProductModelName
      --,[LargePhoto]
      ,p.[EnglishDescription] as ProductDescription
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      --,[Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
  left join dbo.DimProductSubcategory as ps
  on p.ProductSubcategoryKey = ps.ProductSubcategoryKey
  left join dbo.DimProductCategory as pc
  on ps.ProductCategoryKey = pc.ProductCategoryKey
  order by p.ProductKey asc