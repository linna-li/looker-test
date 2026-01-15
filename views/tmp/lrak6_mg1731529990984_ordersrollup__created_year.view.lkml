# The name of this view in Looker is "Lrak6 Mg1731529990984 Ordersrollup Created Year"
view: lrak6_mg1731529990984_ordersrollup__created_year {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: tmp.LR$AK6MG1731529990984_orders$rollup__created_year ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Orders Count" in Explore.

  dimension: orders_count {
    type: number
    sql: ${TABLE}.`orders.count` ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: orders_created_year {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.`orders.created_year` ;;
  }
  measure: count {
    type: count
  }
}
