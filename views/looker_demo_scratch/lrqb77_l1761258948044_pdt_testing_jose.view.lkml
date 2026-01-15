# The name of this view in Looker is "Lrqb77 L1761258948044 Pdt Testing Jose"
view: lrqb77_l1761258948044_pdt_testing_jose {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: looker_demo_scratch.LR$QB77L1761258948044_pdt_testing_jose ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "City" in Explore.

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }
  measure: count {
    type: count
    drill_fields: [first_name]
  }
}
