# The name of this view in Looker is "Lrakvk71731529999374 Ordersrollup Users State"
view: lrakvk71731529999374_ordersrollup__users_state {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: tmp.LR$AKVK71731529999374_orders$rollup__users_state ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Users Count" in Explore.

  dimension: users_count {
    type: number
    sql: ${TABLE}.`users.count` ;;
  }

  dimension: users_state {
    type: string
    sql: ${TABLE}.`users.state` ;;
  }
  measure: count {
    type: count
  }
}
