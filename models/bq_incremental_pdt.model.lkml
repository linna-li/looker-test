connection: "looker-dcl-data"

persist_for: "0 seconds"

view: base_table {
  derived_table: {
    sql_trigger_value: SELECT 1 ;;
    sql: SELECT timestamp FROM UNNEST(GENERATE_TIMESTAMP_ARRAY(TIMESTAMP("2025-06-01 23:55:00"), CURRENT_TIMESTAMP(), INTERVAL 1 minute)) AS timestamp;;
    partition_keys: ["timestamp"]
  }
  dimension: timestamp {
    type: date_time
    sql: ${TABLE}.timestamp ;;
    convert_tz: no
  }
  measure: count {
    type: count
  }
  measure: min_timestamp {
    type: date_time
    sql: MIN(${TABLE}.timestamp) ;;
  }
  measure: max_timestamp {
    type: date_time
    sql: MAX(${TABLE}.timestamp) ;;
  }
}

explore: base_table {}

view: incremental_table {
  derived_table: {
    sql_trigger_value: SELECT 3 ;;
    increment_key: "timestamp_hour"
    increment_offset: 0
    sql: SELECT * FROM ${base_table.SQL_TABLE_NAME}
          WHERE {% incrementcondition %} timestamp {% endincrementcondition %};;
    partition_keys: ["timestamp"]
  }
  dimension_group: timestamp {
    type: time
    sql: ${TABLE}.timestamp ;;
    convert_tz: no
  }
  measure: count {
    type: count
  }
  measure: min_timestamp {
    type: date_time
    sql: MIN(${TABLE}.timestamp) ;;
  }
  measure: max_timestamp {
    type: date_time
    sql: MAX(${TABLE}.timestamp) ;;
  }
}

explore: incremental_table {}
