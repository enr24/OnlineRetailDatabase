DROP TABLE IF EXISTS OnlineRetail;
CREATE TABLE OnlineRetail(
    rowNum Integer,
    InvoiceNo Integer,
    StockCode Text,
    Description Text,
    Quantity Integer,
    InvoiceDate DATE,
    UnitPrice Decimal (10,5),
    CustomerID Integer, 
    Country Text
    
);
.import --csv --skip 1 online_retail.csv OnlineRetail