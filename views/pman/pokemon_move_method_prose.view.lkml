# The name of this view in Looker is "Pokemon Move Method Prose"
view: pokemon_move_method_prose {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pokemon_move_method_prose ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: local_language_id {
    type: number
    sql: ${TABLE}.local_language_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: pokemon_move_method_id {
    type: number
    sql: ${TABLE}.pokemon_move_method_id ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
