# The name of this view in Looker is "Innodb Cmp per Index"
view: innodb_cmp_per_index {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.INNODB_CMP_PER_INDEX ;;

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

  dimension: database_name {
    type: string
    sql: ${TABLE}.database_name ;;
  }

  dimension: index_name {
    type: string
    sql: ${TABLE}.index_name ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
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
    drill_fields: [database_name, table_name, index_name]
  }
}
