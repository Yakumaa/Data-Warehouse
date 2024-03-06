import os
import psycopg2
pgpassword = os.environ.get('POSTGRES_PASSWORD')
conn = None
try:
	conn = psycopg2.connect(
		user = "postgres",
	    password = 1234,
	    host = "localhost",
	    port = "5432",
	    database = "postgres")
except Exception as e:
	print("Error connecting to data warehouse")
	print(e)
else:
	print("Successfully connected to warehouse")
finally:
	if conn:
		conn.close()
		print("Connection closed")
