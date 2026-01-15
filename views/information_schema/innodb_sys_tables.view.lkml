# The name of this view in Looker is "Innodb Sys Tables"
view: innodb_sys_tables {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.INNODB_SYS_TABLES ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "File Format" in Explore.

  dimension: file_format {
    type: string
    sql: ${TABLE}.FILE_FORMAT ;;
  }

  dimension: flag {
    type: number
    sql: ${TABLE}.FLAG ;;
  }

  dimension: n_cols {
    type: number
    sql: ${TABLE}.N_COLS ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: row_format {
    type: string
    sql: ${TABLE}.ROW_FORMAT ;;
  }

  dimension: space {
    type: number
    sql: ${TABLE}.SPACE ;;
  }

  dimension: space_type {
    type: string
    sql: ${TABLE}.SPACE_TYPE ;;
  }

  dimension: table_id {
    type: number
    sql: ${TABLE}.TABLE_ID ;;
  }

  dimension: zip_page_size {
    type: number
    sql: ${TABLE}.ZIP_PAGE_SIZE ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
