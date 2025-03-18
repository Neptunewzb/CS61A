import sqlite3
db = sqlite3.Connection("n.db")
db.execute("DROP TABLE IF EXISTS nums;")
db.execute("CREATE TABLE nums AS SELECT 2 ;")
db.execute("INSERT INTO nums VALUES (3);")
print(db.execute("SELECT * FROM nums;").fetchall()) 
db.commit()