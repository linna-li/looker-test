# The name of this view in Looker is "Lrakh0 C1731529997758 Orders 3rollup Orders Created Month"
view: lrakh0_c1731529997758_orders_3rollup__orders_created_month {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: tmp.LR$AKH0C1731529997758_orders_3$rollup__orders_created_month ;;

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

  dimension_group: orders_created_month {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.`orders.created_month` ;;
  }

  dimension: orders_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.`orders.id` ;;
  }
  measure: count {
    type: count
    drill_fields: [demo_db_orders.id]
  }
}
