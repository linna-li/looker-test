# The name of this view in Looker is "Innodb Sys Fields"
view: innodb_sys_fields {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.INNODB_SYS_FIELDS ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Index ID" in Explore.

  dimension: index_id {
    type: number
    sql: ${TABLE}.INDEX_ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: pos {
    type: number
    sql: ${TABLE}.POS ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
