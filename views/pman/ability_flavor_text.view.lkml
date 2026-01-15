# The name of this view in Looker is "Ability Flavor Text"
view: ability_flavor_text {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.ability_flavor_text ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ability ID" in Explore.

  dimension: ability_id {
    type: number
    sql: ${TABLE}.ability_id ;;
  }

  dimension: flavor_text {
    type: string
    sql: ${TABLE}.flavor_text ;;
  }

  dimension: language_id {
    type: number
    sql: ${TABLE}.language_id ;;
  }

  dimension: version_group_id {
    type: number
    sql: ${TABLE}.version_group_id ;;
  }
  measure: count {
    type: count
  }
}
