# The name of this view in Looker is "Move Effect Changelog"
view: move_effect_changelog {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.move_effect_changelog ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Changed In Version Group ID" in Explore.

  dimension: changed_in_version_group_id {
    type: number
    sql: ${TABLE}.changed_in_version_group_id ;;
  }

  dimension: effect_id {
    type: number
    sql: ${TABLE}.effect_id ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }
  measure: count {
    type: count
  }
}
