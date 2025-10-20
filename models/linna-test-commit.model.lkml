# Define the database connection to be used for this model.
connection: "sample_bigquery_connection"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: linna_test_commit_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: linna_test_commit_default_datagroup


# test-edit

# test-edit-after-delete-file
