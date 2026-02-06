# The name of this view in Looker is "Ebay Products"
view: ebay_products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ebay_products.ebay_products` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Author" in Explore.

  dimension: author {
    type: string
    sql: ${TABLE}.Author ;;
  }

  dimension: book_cover {
    type: string
    sql: ${TABLE}.Book_cover ;;
  }

  dimension: book_name {
    type: string
    sql: ${TABLE}.Book_Name ;;
  }

  dimension: customers_rated {
    type: number
    sql: ${TABLE}.Customers_Rated ;;
  }

  dimension: price_new {
    type: number
    sql: ${TABLE}.price_new ;;
  }

  dimension: price_used {
    type: number
    sql: ${TABLE}.price_used ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.Rating ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }
  measure: count {
    type: count
    drill_fields: [book_name]
  }
}
