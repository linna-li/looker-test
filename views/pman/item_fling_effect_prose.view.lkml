# The name of this view in Looker is "Item Fling Effect Prose"
view: item_fling_effect_prose {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.item_fling_effect_prose ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Effect" in Explore.

  dimension: effect {
    type: string
    sql: ${TABLE}.effect ;;
  }

  dimension: item_fling_effect_id {
    type: number
    sql: ${TABLE}.item_fling_effect_id ;;
  }

  dimension: local_language_id {
    type: number
    sql: ${TABLE}.local_language_id ;;
  }
  measure: count {
    type: count
  }
}
