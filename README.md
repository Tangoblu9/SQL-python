# SQL with Python
This is some SQLs queries in PostgreSQL language. Application for DVD rental database.
Objective is to explore some SQL queries and also to combine SQL work with Python.
The application of Python comes from psycopag2 library which enables to connect PostgreSQL database, but the main work comes from importing SQL outputs as excel/csv files into Python.

GUIDE MAP:

customer_data.sql > This is query to combine 4 tables from DVD rental database and import later with Python. 
                    Customer data: provides some basic info about rental shop customers and their spendings
        
customer_data_python.ipynb > This provide some data insides from imported customer_data.sql as excel file. 

SQL + Python psycopg2 lib.ipynb > This is basic concept to import directly data from query into Python (not much utility) 

Other SQL queries:

1/ DVD_payments.sql > This is to extract total amount of dvd rental payments from selected staff_id, period and to convert datetime object.
2/ sub_query_rental_price.sql > This is to select only movies with rental price above average rental price. + data string manipulations.

3/ Create_employees.sql > This is to CREATE from scrath a basic dataset. 
