# The name of this view in Looker is "Innodb Sys Datafiles"
view: innodb_sys_datafiles {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.INNODB_SYS_DATAFILES ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Path" in Explore.

  dimension: path {
    type: string
    sql: ${TABLE}.PATH ;;
  }

  dimension: space {
    type: number
    sql: ${TABLE}.SPACE ;;
  }
  measure: count {
    type: count
  }
}
