# The name of this view in Looker is "Pokemon Forms"
view: pokemon_forms {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pokemon_forms ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Form Identifier" in Explore.

  dimension: form_identifier {
    type: string
    sql: ${TABLE}.form_identifier ;;
  }

  dimension: form_order {
    type: number
    sql: ${TABLE}.form_order ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: introduced_in_version_group_id {
    type: number
    sql: ${TABLE}.introduced_in_version_group_id ;;
  }

  dimension: is_battle_only {
    type: number
    sql: ${TABLE}.is_battle_only ;;
  }

  dimension: is_default {
    type: number
    sql: ${TABLE}.is_default ;;
  }

  dimension: is_mega {
    type: number
    sql: ${TABLE}.is_mega ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}.`order` ;;
  }

  dimension: pokemon_id {
    type: number
    sql: ${TABLE}.pokemon_id ;;
  }
  measure: count {
    type: count
  }
}
