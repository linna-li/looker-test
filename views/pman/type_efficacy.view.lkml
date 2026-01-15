# The name of this view in Looker is "Type Efficacy"
view: type_efficacy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.type_efficacy ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Damage Factor" in Explore.

  dimension: damage_factor {
    type: number
    sql: ${TABLE}.damage_factor ;;
  }

  dimension: damage_type_id {
    type: number
    sql: ${TABLE}.damage_type_id ;;
  }

  dimension: target_type_id {
    type: number
    sql: ${TABLE}.target_type_id ;;
  }
  measure: count {
    type: count
  }
}
