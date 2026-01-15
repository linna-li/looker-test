# The name of this view in Looker is "Lr893 Am1768490479160 Order Itemsrollup Products Category"
view: lr893_am1768490479160_order_itemsrollup__products_category {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: looker_demo_scratch.LR$893AM1768490479160_order_items$rollup__products_category ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Products Category 2" in Explore.

  dimension: products_category_2 {
    type: string
    sql: ${TABLE}.`products.category_2` ;;
  }

  dimension: products_count {
    type: number
    sql: ${TABLE}.`products.count` ;;
  }
  measure: count {
    type: count
  }
}
