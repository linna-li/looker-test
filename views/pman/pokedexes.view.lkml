# The name of this view in Looker is "Pokedexes"
view: pokedexes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.pokedexes ;;

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

  dimension: is_main_series {
    type: number
    sql: ${TABLE}.is_main_series ;;
  }

  dimension: region_id {
    type: string
    sql: ${TABLE}.region_id ;;
  }
  measure: count {
    type: count
  }
}
