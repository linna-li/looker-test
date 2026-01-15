# The name of this view in Looker is "Characteristic Text"
view: characteristic_text {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.characteristic_text ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Characteristic ID" in Explore.

  dimension: characteristic_id {
    type: number
    sql: ${TABLE}.characteristic_id ;;
  }

  dimension: local_language_id {
    type: number
    sql: ${TABLE}.local_language_id ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }
  measure: count {
    type: count
  }
}
