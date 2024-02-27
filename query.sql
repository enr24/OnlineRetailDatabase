.mode box
-- Counting the number of records
--SELECT COUNT(*) FROM onlineRetail WHERE StockCode LIKE '%23843%';;

-- Total revenue on products greater than 2.75
--SELECT SUM(SaleAmount) as 'Total Sale' from onlineRetail WHERE UnitPrice <= 2.75;

-- Revenue of items less than 2.75
--SELECT SUM(SaleAmount) as 'Total Sale' from onlineRetail WHERE UnitPrice <= 2.75 AND UnitPrice >= 0.01

-- Revenue on items less than 2.75 and excluding returns 
--SELECT COUNT(DISTINCT(StockCode)) AS 'Count' FROM onlineRetail WHERE UnitPrice <= 2.75 AND UnitPrice >= 0.01;

-- Total revenue on products 
--SELECT SUM(SaleAmount) as 'Total' from onlineRetail WHERE StockCode LIKE '%23843%';

-- Sale for Specific Invoice;
--SELECT SUM(SaleAmount) as 'Grand Total' from onlineRetail WHERE InvoiceNo = 536367;

-- Number of Different Items avaliable
--SELECT COUNT(DISTINCT(StockCode)) FROM onlineRetail;

-- Revenue by Country
--SELECT SUM(SaleAmount) as 'Revenue', country FROM OnlineRetail GROUP BY COUNTRY;

-- Cigar Sales in United Kingdom
--SELECT DISTINCT(DESCRIPTION), InvoiceDate,SaleAmount,Country FROM OnlineRetail WHERE Country LIKE '%United Kingdom%' AND Description LIKE '%Cigar%' ORDER BY SaleAmount DESC LIMIT 20;

-- Umbrella Sales in the United Kingdom
--SELECT DISTINCT(DESCRIPTION), InvoiceDate,SaleAmount,Country FROM OnlineRetail WHERE Country LIKE '%United Kingdom%' AND Description LIKE '%Umbrella%' ORDER BY SaleAmount DESC LIMIT 20;

-- Cigar Sales in the entire DataSet
-- SELECT DISTINCT(DESCRIPTION),InvoiceDate,Country,SaleAmount FROM OnlineRetail WHERE Description LIKE '%Cigar%' AND SaleAmount > 0 ORDER BY SaleAmount DESC;

-- Umbrella Sales in the entire DataSet
--SELECT DISTINCT(DESCRIPTION),InvoiceDate,Country,SaleAmount FROM OnlineRetail WHERE Description LIKE '%Cigar%' AND SaleAmount > 0 ORDER BY SaleAmount DESC;

--Children's Items
-- SELECT DISTINCT(Description),InvoiceDate,Country,SaleAmount FROM OnlineRetail WHERE Description LIKE '%Childrens%';