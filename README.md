# SQL with Python
These are some SQLs queries in PostgreSQL language. Application for DVD rental database. The objective is to explore some SQL queries and also to combine SQL work with Python. The application of Python comes from psycopag2 library which enables to connect PostgreSQL database, but the main work comes from importing SQL outputs as excel/csv files into Python.

GUIDE MAP:

customer_data.sql > This is a query to combine 4 tables from the DVD rental database and import later with Python. 
                    Customer data: provides some basic info about rental shop customers and their spending
        
customer_data_python.ipynb > This provides some data inside from imported customer_data.sql as an excel file. 

SQL + Python psycopg2 lib.ipynb > This is a basic concept to import directly data from a query into Python (not much utility) 

Other SQL queries:

1/ DVD_payments.sql > This is to extract the total amount of dvd rental payments from selected staff_id, period and to convert datetime object.
2/ sub_query_rental_price.sql > This is to select only movies with rental prices above average rental prices. + data string manipulations.

3/ Create_employees.sql > This is to CREATE from scratch a basic dataset. 
