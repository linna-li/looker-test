# The name of this view in Looker is "Lrjjxfo1768487368446 Order Itemsrollup Order ID Orders S"
view: lrjjxfo1768487368446_order_itemsrollup__order_id__orders_s {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: tmp.LR$JJXFO1768487368446_order_items$rollup__order_id__orders_s ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Order Items Order ID" in Explore.

  dimension: order_items_order_id {
    type: number
    sql: ${TABLE}.`order_items.order_id` ;;
  }

  dimension: order_items_sum_prices {
    type: number
    sql: ${TABLE}.`order_items.sum_prices` ;;
  }

  dimension: order_items_total_sale_price {
    type: number
    sql: ${TABLE}.`order_items.total_sale_price` ;;
  }

  dimension: orders_status {
    type: string
    sql: ${TABLE}.`orders.status` ;;
  }
  measure: count {
    type: count
  }
}
