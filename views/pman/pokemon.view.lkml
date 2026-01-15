# The name of this view in Looker is "Pokemon"
view: pokemon {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pokemon ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Base Experience" in Explore.

  dimension: base_experience {
    type: number
    sql: ${TABLE}.base_experience ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}.height ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: is_default {
    type: number
    sql: ${TABLE}.is_default ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}.`order` ;;
  }

  dimension: species_id {
    type: number
    sql: ${TABLE}.species_id ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }
  measure: count {
    type: count
  }
}
