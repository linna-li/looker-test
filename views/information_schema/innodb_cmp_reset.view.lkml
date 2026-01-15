# The name of this view in Looker is "Innodb Cmp Reset"
view: innodb_cmp_reset {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.INNODB_CMP_RESET ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Compress Ops" in Explore.

  dimension: compress_ops {
    type: number
    sql: ${TABLE}.compress_ops ;;
  }

  dimension: compress_ops_ok {
    type: number
    sql: ${TABLE}.compress_ops_ok ;;
  }

  dimension: compress_time {
    type: number
    sql: ${TABLE}.compress_time ;;
  }

  dimension: page_size {
    type: number
    sql: ${TABLE}.page_size ;;
  }

  dimension: uncompress_ops {
    type: number
    sql: ${TABLE}.uncompress_ops ;;
  }

  dimension: uncompress_time {
    type: number
    sql: ${TABLE}.uncompress_time ;;
  }
  measure: count {
    type: count
  }
}
