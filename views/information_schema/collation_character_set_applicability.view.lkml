# The name of this view in Looker is "Collation Character Set Applicability"
view: collation_character_set_applicability {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.COLLATION_CHARACTER_SET_APPLICABILITY ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Character Set Name" in Explore.

  dimension: character_set_name {
    type: string
    sql: ${TABLE}.CHARACTER_SET_NAME ;;
  }

  dimension: collation_name {
    type: string
    sql: ${TABLE}.COLLATION_NAME ;;
  }
  measure: count {
    type: count
    drill_fields: [collation_name, character_set_name]
  }
}
