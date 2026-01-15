# The name of this view in Looker is "Stats"
view: stats {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.stats ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Damage Class ID" in Explore.

  dimension: damage_class_id {
    type: string
    sql: ${TABLE}.damage_class_id ;;
  }

  dimension: game_index {
    type: string
    sql: ${TABLE}.game_index ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: is_battle_only {
    type: number
    sql: ${TABLE}.is_battle_only ;;
  }
  measure: count {
    type: count
  }
}
