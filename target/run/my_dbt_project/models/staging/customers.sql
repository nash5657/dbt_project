
  create view "my_database"."analytics"."customers__dbt_tmp"
    
    
  as (
    SELECT
    id AS customer_id,
    first_name,
    last_name,
    email,
    created_at::DATE AS signup_date
FROM raw.customers
  );