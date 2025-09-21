CREATE OR REPLACE STAGE JSON_RAW_STAGE
    url = 's3://snowflake-assignments-mc/unstructureddata/';

LIST @JSON_RAW_STAGE;

CREATE OR REPLACE file format JSONFORMAT
    TYPE = JSON;

CREATE OR REPLACE TABLE JSON_RAW (
    Raw Variant
);



COPY INTO JSON_RAW 
    FROM @JSON_RAW_STAGE
    file_format = JSONFORMAT
    files = ('Jobskills.json');

SELECT * FROM JSON_RAW;