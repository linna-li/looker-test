# The name of this view in Looker is "Berries"
view: berries {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.berries ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Firmness ID" in Explore.

  dimension: firmness_id {
    type: number
    sql: ${TABLE}.firmness_id ;;
  }

  dimension: growth_time {
    type: number
    sql: ${TABLE}.growth_time ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.item_id ;;
  }

  dimension: max_harvest {
    type: number
    sql: ${TABLE}.max_harvest ;;
  }

  dimension: natural_gift_power {
    type: number
    sql: ${TABLE}.natural_gift_power ;;
  }

  dimension: natural_gift_type_id {
    type: number
    sql: ${TABLE}.natural_gift_type_id ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }

  dimension: smoothness {
    type: number
    sql: ${TABLE}.smoothness ;;
  }

  dimension: soil_dryness {
    type: number
    sql: ${TABLE}.soil_dryness ;;
  }
  measure: count {
    type: count
  }
}
