# The name of this view in Looker is "Lrrewjd1762708904008 Product Agg Pdt Trigger"
view: lrrewjd1762708904008_product_agg_pdt_trigger {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: looker_demo_scratch.LR$REWJD1762708904008_product_agg_pdt_trigger ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Brand" in Explore.

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: count_lrrewjd1762708904008_product_agg_pdt_trigger {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: distinct_skus {
    type: number
    sql: ${TABLE}.distinct_skus ;;
  }

  dimension: max_retail_price {
    type: number
    sql: ${TABLE}.max_retail_price ;;
  }
  measure: count {
    type: count
  }
}
