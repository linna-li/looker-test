connection: "sample_bigquery_connection"

datagroup: test1015_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test1015_default_datagroup

# test

# test advanced

# test 2 branch
