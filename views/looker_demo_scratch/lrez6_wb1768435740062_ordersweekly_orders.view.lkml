# The name of this view in Looker is "Lrez6 Wb1768435740062 Ordersweekly Orders"
view: lrez6_wb1768435740062_ordersweekly_orders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: looker_demo_scratch.LR$EZ6WB1768435740062_orders$weekly_orders ;;

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

  dimension_group: orders_created_week {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.`orders.created_week` ;;
  }

  dimension: orders_status {
    type: string
    sql: ${TABLE}.`orders.status` ;;
  }
  measure: count {
    type: count
  }
}
