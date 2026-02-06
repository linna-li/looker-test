# The name of this view in Looker is "Vsds Bqml Model Info"
view: vsds_bqml_model_info {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vsds.bqml_model_info` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Created By Email" in Explore.

  dimension: created_by_email {
    type: string
    sql: ${TABLE}.created_by_email ;;
  }

  dimension: created_by_first_name {
    type: string
    sql: ${TABLE}.created_by_first_name ;;
  }

  dimension: created_by_last_name {
    type: string
    sql: ${TABLE}.created_by_last_name ;;
  }

  dimension: model_created_at {
    type: number
    sql: ${TABLE}.model_created_at ;;
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.model_name ;;
  }

  dimension: model_updated_at {
    type: number
    sql: ${TABLE}.model_updated_at ;;
  }

  dimension: shared_with_emails {
    type: string
    sql: ${TABLE}.shared_with_emails ;;
  }

  dimension: state_json {
    type: string
    sql: ${TABLE}.state_json ;;
  }
  measure: count {
    type: count
    drill_fields: [model_name, created_by_last_name, created_by_first_name]
  }
}
