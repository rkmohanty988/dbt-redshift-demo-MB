--target schema 'snapshots' not present prior to run in db. will be created during run time .
--if any 'address' column  value in customer table changes , it will create a snapshot. 

{% snapshot address_snapshot_check %}

    {{
        config(
          target_schema='snapshots', 
          strategy='check',
          unique_key='customer_id',
          check_cols=['address'],
        )
    }}

    select * from raw_data.customer

{% endsnapshot %}