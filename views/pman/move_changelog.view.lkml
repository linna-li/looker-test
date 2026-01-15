# The name of this view in Looker is "Move Changelog"
view: move_changelog {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.move_changelog ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Accuracy" in Explore.

  dimension: accuracy {
    type: string
    sql: ${TABLE}.accuracy ;;
  }

  dimension: changed_in_version_group_id {
    type: number
    sql: ${TABLE}.changed_in_version_group_id ;;
  }

  dimension: effect_chance {
    type: string
    sql: ${TABLE}.effect_chance ;;
  }

  dimension: effect_id {
    type: string
    sql: ${TABLE}.effect_id ;;
  }

  dimension: move_id {
    type: number
    sql: ${TABLE}.move_id ;;
  }

  dimension: power {
    type: string
    sql: ${TABLE}.power ;;
  }

  dimension: pp {
    type: string
    sql: ${TABLE}.pp ;;
  }

  dimension: type_id {
    type: string
    sql: ${TABLE}.type_id ;;
  }
  measure: count {
    type: count
  }
}
