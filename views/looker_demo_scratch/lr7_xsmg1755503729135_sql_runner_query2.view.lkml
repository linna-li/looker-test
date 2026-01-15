# The name of this view in Looker is "Lr7 Xsmg1755503729135 SQL Runner Query2"
view: lr7_xsmg1755503729135_sql_runner_query2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: looker_demo_scratch.LR$7XSMG1755503729135_sql_runner_query2 ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Diff ID" in Explore.

  dimension: diff_id {
    type: number
    sql: ${TABLE}.diff_id ;;
  }

  dimension: users_age {
    type: number
    sql: ${TABLE}.`users.age` ;;
  }

  dimension: users_first_name {
    type: string
    sql: ${TABLE}.`users.first_name` ;;
  }

  dimension: users_last_name {
    type: string
    sql: ${TABLE}.`users.last_name` ;;
  }

  dimension: users_state {
    type: string
    sql: ${TABLE}.`users.state` ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: users {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.users_time ;;
  }

  dimension: usersid {
    type: number
    value_format_name: id
    sql: ${TABLE}.usersid ;;
  }
  measure: count {
    type: count
    drill_fields: [users_first_name, users_last_name]
  }
}
