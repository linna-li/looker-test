# The name of this view in Looker is "Innodb Sys Foreign"
view: innodb_sys_foreign {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.INNODB_SYS_FOREIGN ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "For Name" in Explore.

  dimension: for_name {
    type: string
    sql: ${TABLE}.FOR_NAME ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: n_cols {
    type: number
    sql: ${TABLE}.N_COLS ;;
  }

  dimension: ref_name {
    type: string
    sql: ${TABLE}.REF_NAME ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.TYPE ;;
  }
  measure: count {
    type: count
    drill_fields: [for_name, ref_name]
  }
}
