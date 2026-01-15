# The name of this view in Looker is "Version Groups"
view: version_groups {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.version_groups ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Generation ID" in Explore.

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

  dimension: order {
    type: number
    sql: ${TABLE}.`order` ;;
  }
  measure: count {
    type: count
  }
}
