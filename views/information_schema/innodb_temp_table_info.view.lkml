# The name of this view in Looker is "Innodb Temp Table Info"
view: innodb_temp_table_info {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.INNODB_TEMP_TABLE_INFO ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Is Compressed" in Explore.

  dimension: is_compressed {
    type: string
    sql: ${TABLE}.IS_COMPRESSED ;;
  }

  dimension: n_cols {
    type: number
    sql: ${TABLE}.N_COLS ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: per_table_tablespace {
    type: string
    sql: ${TABLE}.PER_TABLE_TABLESPACE ;;
  }

  dimension: space {
    type: number
    sql: ${TABLE}.SPACE ;;
  }

  dimension: table_id {
    type: number
    sql: ${TABLE}.TABLE_ID ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
