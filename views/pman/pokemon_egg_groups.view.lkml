# The name of this view in Looker is "Pokemon Egg Groups"
view: pokemon_egg_groups {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pokemon_egg_groups ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Egg Group ID" in Explore.

  dimension: egg_group_id {
    type: number
    sql: ${TABLE}.egg_group_id ;;
  }

  dimension: species_id {
    type: number
    sql: ${TABLE}.species_id ;;
  }
  measure: count {
    type: count
  }
}
