SELECT
    signup_date,
    COUNT(customer_id) AS total_signups
FROM {{ ref('customers') }}  -- Using dbt's ref() function
GROUP BY signup_date
ORDER BY signup_date
