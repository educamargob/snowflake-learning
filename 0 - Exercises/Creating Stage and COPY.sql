// Creating external stage
CREATE OR REPLACE STAGE MANAGE_DB.EXTERNAL_STAGES.EXERCISE_STAGE
    url = 's3://snowflake-assignments-mc/loadingdata/';

LIST @MANAGE_DB.EXTERNAL_STAGES.EXERCISE_STAGE;

// Copy command with specified file(s)
COPY INTO OUR_FIRST_DB.PUBLIC.ORDERS
    FROM @MANAGE_DB.external_stages.aws_stage
    file_format= (type = csv field_delimiter=',' skip_header=1)
    files = ('OrderDetails.csv');


COPY INTO EXERCISE_DB.PUBLIC.CUSTOMERS
    FROM @MANAGE_DB.EXTERNAL_STAGES.EXERCISE_STAGE
    file_format = (type = csv field_delimiter=',' skip_header=1)
    files = ('customers3.csv');



//Correto

 ---- Assignment solution - Create stage & load data ----
 
-- create stage object
CREATE OR REPLACE STAGE EXERCISE_DB.public.EXERCISE_STAGE
    url='s3://snowflake-assignments-mc/loadingdata';

-- List files in stage
LIST @EXERCISE_DB.public.EXERCISE_STAGE;

-- Load the data 
COPY INTO EXERCISE_DB.PUBLIC.CUSTOMERS
    FROM @EXERCISE_DB.public.EXERCISE_STAGE
    file_format= (type = csv field_delimiter=';' skip_header=1);


    