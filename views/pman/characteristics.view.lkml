# The name of this view in Looker is "Characteristics"
view: characteristics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: pman.characteristics ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Gene Mod 5" in Explore.

  dimension: gene_mod_5 {
    type: number
    sql: ${TABLE}.gene_mod_5 ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: stat_id {
    type: number
    sql: ${TABLE}.stat_id ;;
  }
  measure: count {
    type: count
  }
}
