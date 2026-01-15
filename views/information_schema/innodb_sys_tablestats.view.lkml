# The name of this view in Looker is "Innodb Sys Tablestats"
view: innodb_sys_tablestats {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.INNODB_SYS_TABLESTATS ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Autoinc" in Explore.

  dimension: autoinc {
    type: number
    sql: ${TABLE}.AUTOINC ;;
  }

  dimension: clust_index_size {
    type: number
    sql: ${TABLE}.CLUST_INDEX_SIZE ;;
  }

  dimension: modified_counter {
    type: number
    sql: ${TABLE}.MODIFIED_COUNTER ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: num_rows {
    type: number
    sql: ${TABLE}.NUM_ROWS ;;
  }

  dimension: other_index_size {
    type: number
    sql: ${TABLE}.OTHER_INDEX_SIZE ;;
  }

  dimension: ref_count {
    type: number
    sql: ${TABLE}.REF_COUNT ;;
  }

  dimension: stats_initialized {
    type: string
    sql: ${TABLE}.STATS_INITIALIZED ;;
  }

  dimension: table_id {
    type: number
    sql: ${TABLE}.TABLE_ID ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
