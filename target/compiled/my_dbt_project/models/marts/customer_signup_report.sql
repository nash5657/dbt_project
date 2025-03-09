SELECT
    signup_date,
    COUNT(customer_id) AS total_signups
FROM "my_database"."analytics"."customers"  -- Using dbt's ref() function
GROUP BY signup_date
ORDER BY signup_date