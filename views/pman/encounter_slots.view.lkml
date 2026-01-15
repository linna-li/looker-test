# The name of this view in Looker is "Encounter Slots"
view: encounter_slots {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.encounter_slots ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Encounter Method ID" in Explore.

  dimension: encounter_method_id {
    type: number
    sql: ${TABLE}.encounter_method_id ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: rarity {
    type: number
    sql: ${TABLE}.rarity ;;
  }

  dimension: slot {
    type: string
    sql: ${TABLE}.slot ;;
  }

  dimension: version_group_id {
    type: number
    sql: ${TABLE}.version_group_id ;;
  }
  measure: count {
    type: count
  }
}
