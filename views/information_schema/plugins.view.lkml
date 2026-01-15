# The name of this view in Looker is "Plugins"
view: plugins {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.PLUGINS ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Load Option" in Explore.

  dimension: load_option {
    type: string
    sql: ${TABLE}.LOAD_OPTION ;;
  }

  dimension: plugin_author {
    type: string
    sql: ${TABLE}.PLUGIN_AUTHOR ;;
  }

  dimension: plugin_description {
    type: string
    sql: ${TABLE}.PLUGIN_DESCRIPTION ;;
  }

  dimension: plugin_library {
    type: string
    sql: ${TABLE}.PLUGIN_LIBRARY ;;
  }

  dimension: plugin_library_version {
    type: string
    sql: ${TABLE}.PLUGIN_LIBRARY_VERSION ;;
  }

  dimension: plugin_license {
    type: string
    sql: ${TABLE}.PLUGIN_LICENSE ;;
  }

  dimension: plugin_name {
    type: string
    sql: ${TABLE}.PLUGIN_NAME ;;
  }

  dimension: plugin_status {
    type: string
    sql: ${TABLE}.PLUGIN_STATUS ;;
  }

  dimension: plugin_type {
    type: string
    sql: ${TABLE}.PLUGIN_TYPE ;;
  }

  dimension: plugin_type_version {
    type: string
    sql: ${TABLE}.PLUGIN_TYPE_VERSION ;;
  }

  dimension: plugin_version {
    type: string
    sql: ${TABLE}.PLUGIN_VERSION ;;
  }
  measure: count {
    type: count
    drill_fields: [plugin_name]
  }
}
