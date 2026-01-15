# The name of this view in Looker is "Encounter Condition Values"
view: encounter_condition_values {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.encounter_condition_values ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Encounter Condition ID" in Explore.

  dimension: encounter_condition_id {
    type: number
    sql: ${TABLE}.encounter_condition_id ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: is_default {
    type: number
    sql: ${TABLE}.is_default ;;
  }
  measure: count {
    type: count
  }
}
