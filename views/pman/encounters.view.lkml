# The name of this view in Looker is "Encounters"
view: encounters {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.encounters ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Encounter Slot ID" in Explore.

  dimension: encounter_slot_id {
    type: number
    sql: ${TABLE}.encounter_slot_id ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: location_area_id {
    type: number
    sql: ${TABLE}.location_area_id ;;
  }

  dimension: max_level {
    type: number
    sql: ${TABLE}.max_level ;;
  }

  dimension: min_level {
    type: number
    sql: ${TABLE}.min_level ;;
  }

  dimension: pokemon_id {
    type: number
    sql: ${TABLE}.pokemon_id ;;
  }

  dimension: version_id {
    type: number
    sql: ${TABLE}.version_id ;;
  }
  measure: count {
    type: count
  }
}
