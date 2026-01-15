# The name of this view in Looker is "Lruuoh41768489207269 My Pdt Orders"
view: lruuoh41768489207269_my_pdt_orders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: looker_demo_scratch.LR$UUOH41768489207269_my_pdt_orders ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Order Items ID" in Explore.

  dimension: order_items_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.`order_items.id` ;;
  }

  dimension: order_items_order_id {
    type: number
    sql: ${TABLE}.`order_items.order_id` ;;
  }

  dimension: order_items_phone {
    type: string
    sql: ${TABLE}.`order_items.phone` ;;
  }

  dimension: order_items_sale_price {
    type: number
    sql: ${TABLE}.`order_items.sale_price` ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: orders_created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.`orders.created_date` ;;
  }

  dimension: orders_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.`orders.id` ;;
  }

  dimension: orders_status {
    type: string
    sql: ${TABLE}.`orders.status` ;;
  }

  dimension: orders_user_id {
    type: number
    sql: ${TABLE}.`orders.user_id` ;;
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
  measure: count {
    type: count
    drill_fields: [users_first_name, users_last_name, demo_db_orders.id, demo_db_order_items.id]
  }
}
