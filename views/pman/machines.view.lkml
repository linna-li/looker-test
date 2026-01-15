# The name of this view in Looker is "Machines"
view: machines {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.machines ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Item ID" in Explore.

  dimension: item_id {
    type: number
    sql: ${TABLE}.item_id ;;
  }

  dimension: machine_number {
    type: number
    sql: ${TABLE}.machine_number ;;
  }

  dimension: move_id {
    type: number
    sql: ${TABLE}.move_id ;;
  }

  dimension: version_group_id {
    type: number
    sql: ${TABLE}.version_group_id ;;
  }
  measure: count {
    type: count
  }
}
