view: order_items {
  sql_table_name: `orders.order_items` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }
  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: returned_at {
    type: string
    sql: ${TABLE}.returned_at ;;
  }
  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
    value_format: "$#,##0.00"
  }
  measure: count {
    type: count
    drill_fields: [id, inventory_items.id, orders.id]
  }
  measure: total_revenue {
    type: sum
    sql: ${sale_price} ;; # Sums the sale_price dimension
    value_format: "$#,##0.00" # Applies the same formatting
    label: "Total Revenue (USD)"
    description: "Total revenue across all orders or selected segments, formatted as currency."
  }
}
