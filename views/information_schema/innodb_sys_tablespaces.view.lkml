# The name of this view in Looker is "Innodb Sys Tablespaces"
view: innodb_sys_tablespaces {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.INNODB_SYS_TABLESPACES ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Allocated Size" in Explore.

  dimension: allocated_size {
    type: number
    sql: ${TABLE}.ALLOCATED_SIZE ;;
  }

  dimension: file_format {
    type: string
    sql: ${TABLE}.FILE_FORMAT ;;
  }

  dimension: file_size {
    type: number
    sql: ${TABLE}.FILE_SIZE ;;
  }

  dimension: flag {
    type: number
    sql: ${TABLE}.FLAG ;;
  }

  dimension: fs_block_size {
    type: number
    sql: ${TABLE}.FS_BLOCK_SIZE ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: page_size {
    type: number
    sql: ${TABLE}.PAGE_SIZE ;;
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

  dimension: zip_page_size {
    type: number
    sql: ${TABLE}.ZIP_PAGE_SIZE ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
