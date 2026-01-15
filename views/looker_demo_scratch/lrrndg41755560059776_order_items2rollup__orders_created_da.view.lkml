# The name of this view in Looker is "Lrrndg41755560059776 Order Items2rollup Orders Created Da"
view: lrrndg41755560059776_order_items2rollup__orders_created_da {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: looker_demo_scratch.LR$RNDG41755560059776_order_items2$rollup__orders_created_da ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Orders Average Total Amount of Order USD" in Explore.

  dimension: orders_average_total_amount_of_order_usd {
    type: number
    sql: ${TABLE}.`orders.average_total_amount_of_order_usd` ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: orders_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.`orders.created_date` ;;
  }
  measure: count {
    type: count
  }
}
