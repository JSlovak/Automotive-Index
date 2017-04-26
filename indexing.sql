-- Create a user indexed_cars_user

DROP ROLE IF EXISTS indexed_cars_user;
CREATE ROLE indexed_cars_user;

---  Create a new database indexed_cars owned by indexed_car_user

DROP DATABASE IF EXISTS indexed_cars;
CREATE DATABASE indexed_cars;

\c indexed_cars

\i scripts/car_models.sql

-- Run scripts/car_model_data.sql on the indexed_ cars database 10x
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql


-- TIMING SELECT STATEMENTS

-- enable \timing command in psql

-- Run query to get a list of all make_title
  -- from car_models
  -- where make_code is 'LAM'
  -- should be 1 result

-- Run a query to list all model_title s
    -- where make_code is 'NISSAN'
    -- where model_code is 'GT-R'
    -- should be 1 result

-- Run a query to list all of make_code, model_code, model_title and year from car_models,
  -- where the make_code is 'LAM'
  -- should have 1360 rows

-- Run a query to list all fields from car_models
  -- between 2010 and 2015
  -- should have 78840 rows

-- Run a query to list all fields from all car_models
  -- in the year of 2010
  -- should have 13140 rows


\q