# The name of this view in Looker is "Innodb Sys Foreign Cols"
view: innodb_sys_foreign_cols {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.INNODB_SYS_FOREIGN_COLS ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "For Col Name" in Explore.

  dimension: for_col_name {
    type: string
    sql: ${TABLE}.FOR_COL_NAME ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: pos {
    type: number
    sql: ${TABLE}.POS ;;
  }

  dimension: ref_col_name {
    type: string
    sql: ${TABLE}.REF_COL_NAME ;;
  }
  measure: count {
    type: count
    drill_fields: [for_col_name, ref_col_name]
  }
}
