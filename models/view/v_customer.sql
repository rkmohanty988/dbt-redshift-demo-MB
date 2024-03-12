{{ config(materialized='view')}}
SELECT
      customer_id,
      UPPER(CONCAT(CONCAT(first_name,' '),last_name)) as customer_name_in_CAPS,
      email as email_address,
      address as billing_address
   FROM raw_data.customer