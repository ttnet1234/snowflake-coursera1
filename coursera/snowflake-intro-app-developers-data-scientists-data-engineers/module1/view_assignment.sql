
create or replace view TRUCK_FRANCHISE as
SELECT
    t.*,
    f.first_name AS franchisee_first_name,
    f.last_name AS franchisee_last_name
FROM tasty_bytes.raw_pos.truck t
JOIN tasty_bytes.raw_pos.franchise f
    ON t.franchise_id = f.franchise_id;

-- What is the “make” of the food truck for the franchisee with the first name of “Sara” and the last name of “Nicholson”?
select make
from TRUCK_FRANCHISE
where franchisee_first_name = 'Sara'
and franchisee_last_name = 'Nicholson';
-- Chevrolet

describe view truck_franchise ; -- NUMBER(38,0)

drop view TRUCK_FRANCHISE; -- TRUCK_FRANCHISE successfully dropped.


create or replace materialized view truck_franchise_materialized as
SELECT
    t.*,
    f.first_name AS franchisee_first_name,
    f.last_name AS franchisee_last_name
FROM tasty_bytes.raw_pos.truck t
JOIN tasty_bytes.raw_pos.franchise f
    ON t.franchise_id = f.franchise_id;


-- Question 5

-- Use the CREATE MATERIALIZED VIEW command to create a “nissan” view in the test_database database and the test_schema schema, based on this SQL query:

create or replace materialized view nissan as
SELECT
    t.*
FROM tasty_bytes.raw_pos.truck t
WHERE make = 'Nissan';

select count(*)
from nissan;--6

drop materialized view nissan;