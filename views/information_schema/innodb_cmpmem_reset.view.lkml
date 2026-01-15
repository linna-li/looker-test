# The name of this view in Looker is "Innodb Cmpmem Reset"
view: innodb_cmpmem_reset {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.INNODB_CMPMEM_RESET ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Buffer Pool Instance" in Explore.

  dimension: buffer_pool_instance {
    type: number
    sql: ${TABLE}.buffer_pool_instance ;;
  }

  dimension: page_size {
    type: number
    sql: ${TABLE}.page_size ;;
  }

  dimension: pages_free {
    type: number
    sql: ${TABLE}.pages_free ;;
  }

  dimension: pages_used {
    type: number
    sql: ${TABLE}.pages_used ;;
  }

  dimension: relocation_ops {
    type: number
    sql: ${TABLE}.relocation_ops ;;
  }

  dimension: relocation_time {
    type: number
    sql: ${TABLE}.relocation_time ;;
  }
  measure: count {
    type: count
  }
}
