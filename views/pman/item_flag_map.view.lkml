# The name of this view in Looker is "Item Flag Map"
view: item_flag_map {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.item_flag_map ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Item Flag ID" in Explore.

  dimension: item_flag_id {
    type: number
    sql: ${TABLE}.item_flag_id ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.item_id ;;
  }
  measure: count {
    type: count
  }
}
