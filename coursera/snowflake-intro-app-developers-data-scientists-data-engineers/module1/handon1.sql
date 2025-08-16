CREATE DATABASE test_database;
CREATE SCHEMA test_database.test_schema;

USE DATABASE test_database;
USE SCHEMA test_schema;

CREATE TABLE TEST_TABLE (
	TEST_NUMBER NUMBER,
	TEST_VARCHAR VARCHAR,
	TEST_BOOLEAN BOOLEAN,
	TEST_DATE DATE,
	TEST_VARIANT VARIANT,
	TEST_GEOGRAPHY GEOGRAPHY
);
INSERT INTO TEST_DATABASE.TEST_SCHEMA.TEST_TABLE
  VALUES
  (28, 'ha!', True, '2024-01-01', NULL, NULL);

show tables;
-- bytes 2048

-- 
-- Create a new table in the TEST_DATABASE database and the TEST_SCHEMA schema called “test_table2” with one NUMBER column called TEST_NUMBER. Then insert the value 42 into it using the INSERT INTO command.


CREATE TABLE TEST_TABLE2 (
	TEST_NUMBER NUMBER
);

INSERT INTO TEST_DATABASE.TEST_SCHEMA.TEST_TABLE2
  VALUES
  (42);

show tables;

drop table test_table;

undrop table test_table;