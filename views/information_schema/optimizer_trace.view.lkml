# The name of this view in Looker is "Optimizer Trace"
view: optimizer_trace {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.OPTIMIZER_TRACE ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Insufficient Privileges" in Explore.

  dimension: insufficient_privileges {
    type: yesno
    sql: ${TABLE}.INSUFFICIENT_PRIVILEGES ;;
  }

  dimension: missing_bytes_beyond_max_mem_size {
    type: number
    sql: ${TABLE}.MISSING_BYTES_BEYOND_MAX_MEM_SIZE ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}.QUERY ;;
  }

  dimension: trace {
    type: string
    sql: ${TABLE}.TRACE ;;
  }
  measure: count {
    type: count
  }
}
