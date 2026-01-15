# The name of this view in Looker is "Moves"
view: moves {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.moves ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Accuracy" in Explore.

  dimension: accuracy {
    type: string
    sql: ${TABLE}.accuracy ;;
  }

  dimension: contest_effect_id {
    type: string
    sql: ${TABLE}.contest_effect_id ;;
  }

  dimension: contest_type_id {
    type: string
    sql: ${TABLE}.contest_type_id ;;
  }

  dimension: damage_class_id {
    type: number
    sql: ${TABLE}.damage_class_id ;;
  }

  dimension: effect_chance {
    type: string
    sql: ${TABLE}.effect_chance ;;
  }

  dimension: effect_id {
    type: number
    sql: ${TABLE}.effect_id ;;
  }

  dimension: generation_id {
    type: number
    sql: ${TABLE}.generation_id ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: power {
    type: string
    sql: ${TABLE}.power ;;
  }

  dimension: pp {
    type: string
    sql: ${TABLE}.pp ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: super_contest_effect_id {
    type: string
    sql: ${TABLE}.super_contest_effect_id ;;
  }

  dimension: target_id {
    type: number
    sql: ${TABLE}.target_id ;;
  }

  dimension: type_id {
    type: number
    sql: ${TABLE}.type_id ;;
  }
  measure: count {
    type: count
  }
}
