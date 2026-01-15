# The name of this view in Looker is "Nature Battle Style Preferences"
view: nature_battle_style_preferences {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.nature_battle_style_preferences ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "High Hp Preference" in Explore.

  dimension: high_hp_preference {
    type: number
    sql: ${TABLE}.high_hp_preference ;;
  }

  dimension: low_hp_preference {
    type: number
    sql: ${TABLE}.low_hp_preference ;;
  }

  dimension: move_battle_style_id {
    type: number
    sql: ${TABLE}.move_battle_style_id ;;
  }

  dimension: nature_id {
    type: number
    sql: ${TABLE}.nature_id ;;
  }
  measure: count {
    type: count
  }
}
