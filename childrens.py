import sqlite3
con = sqlite3.connect('onlineRetail.db')
cursor = con.cursor()
cursor.execute("""SELECT DISTINCT(Description),InvoiceDate,Country,SaleAmount FROM OnlineRetail WHERE Description LIKE '%Childrens%' AND SaleAmount >0;""")
val = cursor.fetchall()
file1 = open("childrens.csv", "w")
for v in val:
    file1.write(str(v))
    file1.write('\n')
file1.close()
