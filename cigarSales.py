import sqlite3
con = sqlite3.connect('onlineRetail.db')
cursor = con.cursor()
cursor.execute("""SELECT DISTINCT(DESCRIPTION),InvoiceDate,Country,SaleAmount FROM OnlineRetail WHERE Description LIKE '%Cigar%' AND SaleAmount > 0 ORDER BY SaleAmount DESC;""")
val = cursor.fetchall()
file1 = open("cigars.csv", "w")
for v in val:
    file1.write(str(v))
    file1.write('\n')
file1.close()
