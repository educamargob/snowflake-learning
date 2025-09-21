CREATE TABLE EXERCISE_DB.PUBLIC.CUSTOMERS (
  "ID" INT,
  "first_name" VARCHAR,
  "last_name" VARCHAR,
  "email" VARCHAR,
  "age" INT,
  "city" VARCHAR);

USE DATABASE EXERCISE_DB;

COPY INTO CUSTOMERS
    FROM s3://snowflake-assignments-mc/gettingstarted/customers.csv
    file_format = (type = 'csv'
                   field_delimiter = ','
                   skip_header = 1);


SELECT * FROM CUSTOMERS;

                   