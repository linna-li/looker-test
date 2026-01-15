# The name of this view in Looker is "User Privileges"
view: user_privileges {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.USER_PRIVILEGES ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Grantee" in Explore.

  dimension: grantee {
    type: string
    sql: ${TABLE}.GRANTEE ;;
  }

  dimension: is_grantable {
    type: string
    sql: ${TABLE}.IS_GRANTABLE ;;
  }

  dimension: privilege_type {
    type: string
    sql: ${TABLE}.PRIVILEGE_TYPE ;;
  }

  dimension: table_catalog {
    type: string
    sql: ${TABLE}.TABLE_CATALOG ;;
  }
  measure: count {
    type: count
  }
}
