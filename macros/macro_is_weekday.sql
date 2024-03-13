{%- macro is_weekday(date_column) -%}
  EXTRACT(DAYOFWEEK FROM DATE({{date_column }})) IN (2,3,4,5,6)
{%- endmacro -%}