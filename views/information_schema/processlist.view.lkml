# The name of this view in Looker is "Processlist"
view: processlist {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.PROCESSLIST ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Command" in Explore.

  dimension: command {
    type: string
    sql: ${TABLE}.COMMAND ;;
  }

  dimension: db {
    type: string
    sql: ${TABLE}.DB ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.HOST ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: info {
    type: string
    sql: ${TABLE}.INFO ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.TIME ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.USER ;;
  }
  measure: count {
    type: count
  }
}
