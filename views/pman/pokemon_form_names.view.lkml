# The name of this view in Looker is "Pokemon Form Names"
view: pokemon_form_names {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pokemon_form_names ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Form Name" in Explore.

  dimension: form_name {
    type: string
    sql: ${TABLE}.form_name ;;
  }

  dimension: local_language_id {
    type: number
    sql: ${TABLE}.local_language_id ;;
  }

  dimension: pokemon_form_id {
    type: number
    sql: ${TABLE}.pokemon_form_id ;;
  }

  dimension: pokemon_name {
    type: string
    sql: ${TABLE}.pokemon_name ;;
  }
  measure: count {
    type: count
    drill_fields: [form_name, pokemon_name]
  }
}
