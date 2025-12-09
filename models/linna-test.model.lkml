# Define the database connection to be used for this model.
connection: "looker-dcl-data"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: linna_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

explore: order_items {}

explore: orders {}

persist_with: linna_test_default_datagroup
