--What is the .sql file name , with same name view or table will be created in db.

With stg_customers AS (
  SELECT
      customer_id,
      CONCAT(CONCAT(first_name,' '),last_name) as customer_name,
      email as email_address,
      address as billing_address
   FROM raw_data.customer
)
select * from stg_customers