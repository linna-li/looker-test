# The name of this view in Looker is "Languages"
view: languages {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.languages ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "ID" in Explore.

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: iso3166 {
    type: string
    sql: ${TABLE}.iso3166 ;;
  }

  dimension: iso639 {
    type: string
    sql: ${TABLE}.iso639 ;;
  }

  dimension: official {
    type: number
    sql: ${TABLE}.official ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}.`order` ;;
  }
  measure: count {
    type: count
  }
}
