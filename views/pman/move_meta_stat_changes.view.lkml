# The name of this view in Looker is "Move Meta Stat Changes"
view: move_meta_stat_changes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.move_meta_stat_changes ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Change" in Explore.

  dimension: change {
    type: number
    sql: ${TABLE}.`change` ;;
  }

  dimension: move_id {
    type: number
    sql: ${TABLE}.move_id ;;
  }

  dimension: stat_id {
    type: number
    sql: ${TABLE}.stat_id ;;
  }
  measure: count {
    type: count
  }
}
