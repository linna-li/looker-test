# The name of this view in Looker is "Lrcca9 L1768487931334 SQL Runner Query"
view: lrcca9_l1768487931334_sql_runner_query {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: looker_demo_scratch.LR$CCA9L1768487931334_sql_runner_query ;;

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
