# The name of this view in Looker is "Lrreu1 H1758524302266 Usersrollup City Country Gender St"
view: lrreu1_h1758524302266_usersrollup__city__country__gender__st {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: looker_demo_scratch.LR$REU1H1758524302266_users$rollup__city__country__gender__st ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Users City" in Explore.

  dimension: users_city {
    type: string
    sql: ${TABLE}.`users.city` ;;
  }

  dimension: users_count {
    type: number
    sql: ${TABLE}.`users.count` ;;
  }

  dimension: users_country {
    type: string
    sql: ${TABLE}.`users.country` ;;
  }

  dimension: users_gender {
    type: string
    sql: ${TABLE}.`users.gender` ;;
  }

  dimension: users_state {
    type: string
    sql: ${TABLE}.`users.state` ;;
  }
  measure: count {
    type: count
  }
}
