# The name of this view in Looker is "Tablespaces"
view: tablespaces {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.TABLESPACES ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Autoextend Size" in Explore.

  dimension: autoextend_size {
    type: number
    sql: ${TABLE}.AUTOEXTEND_SIZE ;;
  }

  dimension: engine {
    type: string
    sql: ${TABLE}.ENGINE ;;
  }

  dimension: extent_size {
    type: number
    sql: ${TABLE}.EXTENT_SIZE ;;
  }

  dimension: logfile_group_name {
    type: string
    sql: ${TABLE}.LOGFILE_GROUP_NAME ;;
  }

  dimension: maximum_size {
    type: number
    sql: ${TABLE}.MAXIMUM_SIZE ;;
  }

  dimension: nodegroup_id {
    type: number
    sql: ${TABLE}.NODEGROUP_ID ;;
  }

  dimension: tablespace_comment {
    type: string
    sql: ${TABLE}.TABLESPACE_COMMENT ;;
  }

  dimension: tablespace_name {
    type: string
    sql: ${TABLE}.TABLESPACE_NAME ;;
  }

  dimension: tablespace_type {
    type: string
    sql: ${TABLE}.TABLESPACE_TYPE ;;
  }
  measure: count {
    type: count
    drill_fields: [tablespace_name, logfile_group_name]
  }
}
