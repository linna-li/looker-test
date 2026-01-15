# The name of this view in Looker is "Lrakkvp1768413654555 Pdt Test"
view: lrakkvp1768413654555_pdt_test {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: tmp.LR$AKKVP1768413654555_pdt_test ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Average Orders per Month" in Explore.

  dimension: average_orders_per_month {
    type: number
    sql: ${TABLE}.average_orders_per_month ;;
  }

  dimension: days_since_first_purchase {
    type: number
    sql: ${TABLE}.days_since_first_purchase ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: first_order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.first_order_date ;;
  }

  dimension_group: last_order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_order_date ;;
  }

  dimension: repeat_customer {
    type: string
    sql: ${TABLE}.Repeat_customer ;;
  }

  dimension: total_number_of_orders {
    type: number
    sql: ${TABLE}.total_number_of_orders ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
}
