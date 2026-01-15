# The name of this view in Looker is "Character Sets"
view: character_sets {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.CHARACTER_SETS ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Character Set Name" in Explore.

  dimension: character_set_name {
    type: string
    sql: ${TABLE}.CHARACTER_SET_NAME ;;
  }

  dimension: default_collate_name {
    type: string
    sql: ${TABLE}.DEFAULT_COLLATE_NAME ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: maxlen {
    type: number
    sql: ${TABLE}.MAXLEN ;;
  }
  measure: count {
    type: count
    drill_fields: [character_set_name, default_collate_name]
  }
}
