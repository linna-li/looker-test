# The name of this view in Looker is "Pal Park"
view: pal_park {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pal_park ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Area ID" in Explore.

  dimension: area_id {
    type: number
    sql: ${TABLE}.area_id ;;
  }

  dimension: base_score {
    type: number
    sql: ${TABLE}.base_score ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  dimension: species_id {
    type: number
    sql: ${TABLE}.species_id ;;
  }
  measure: count {
    type: count
  }
}
