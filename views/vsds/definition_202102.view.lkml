# The name of this view in Looker is "Definition 202102"
view: definition_202102 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `vsds.definition_202102` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: application_references {
    hidden: yes
    sql: ${TABLE}.applicationReferences ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Breakdown Code" in Explore.

  dimension: breakdown_code {
    type: yesno
    sql: ${TABLE}.breakdownCode ;;
  }

  dimension: child_groups {
    hidden: yes
    sql: ${TABLE}.childGroups ;;
  }

  dimension: children {
    hidden: yes
    sql: ${TABLE}.children ;;
  }

  dimension: date_revised {
    type: number
    sql: ${TABLE}.dateRevised ;;
  }

  dimension: definition {
    hidden: yes
    sql: ${TABLE}.definition ;;
  }

  dimension: glossary {
    hidden: yes
    sql: ${TABLE}.glossary ;;
  }

  dimension: informative_references {
    hidden: yes
    sql: ${TABLE}.informativeReferences ;;
  }

  dimension: ipc_concordant {
    type: string
    sql: ${TABLE}.ipcConcordant ;;
  }

  dimension: level {
    type: number
    sql: ${TABLE}.level ;;
  }

  dimension: limiting_references {
    hidden: yes
    sql: ${TABLE}.limitingReferences ;;
  }

  dimension: not_allocatable {
    type: yesno
    sql: ${TABLE}.notAllocatable ;;
  }

  dimension: parents {
    hidden: yes
    sql: ${TABLE}.parents ;;
  }

  dimension: residual_references {
    hidden: yes
    sql: ${TABLE}.residualReferences ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: symbol {
    type: string
    sql: ${TABLE}.symbol ;;
  }

  dimension: synonyms {
    hidden: yes
    sql: ${TABLE}.synonyms ;;
  }

  dimension: title_full {
    type: string
    sql: ${TABLE}.titleFull ;;
  }

  dimension: title_part {
    hidden: yes
    sql: ${TABLE}.titlePart ;;
  }
  measure: count {
    type: count
  }
}

# The name of this view in Looker is "Definition 202102 Parents"
view: definition_202102__parents {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202102 Parents" in Explore.

  dimension: definition_202102__parents {
    type: string
    sql: definition_202102__parents ;;
  }
}

# The name of this view in Looker is "Definition 202102 Synonyms"
view: definition_202102__synonyms {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definition_202102__synonyms {
    type: string
    hidden: yes
    sql: definition_202102__synonyms ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definition 202102 Glossary"
view: definition_202102__glossary {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definition_202102__glossary {
    type: string
    hidden: yes
    sql: definition_202102__glossary ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definition 202102 Children"
view: definition_202102__children {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202102 Children" in Explore.

  dimension: definition_202102__children {
    type: string
    sql: definition_202102__children ;;
  }
}

# The name of this view in Looker is "Definition 202102 Title Part"
view: definition_202102__title_part {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202102 Title Part" in Explore.

  dimension: definition_202102__title_part {
    type: string
    sql: definition_202102__title_part ;;
  }
}

# The name of this view in Looker is "Definition 202102 Definition"
view: definition_202102__definition {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202102 Definition" in Explore.

  dimension: definition_202102__definition {
    type: string
    sql: definition_202102__definition ;;
  }
}

# The name of this view in Looker is "Definition 202102 Child Groups"
view: definition_202102__child_groups {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definition_202102__child_groups {
    type: string
    hidden: yes
    sql: definition_202102__child_groups ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: symbols {
    hidden: yes
    sql: symbols ;;
  }
}

# The name of this view in Looker is "Definition 202102 Synonyms Target"
view: definition_202102__synonyms__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202102 Synonyms Target" in Explore.

  dimension: definition_202102__synonyms__target {
    type: string
    sql: definition_202102__synonyms__target ;;
  }
}

# The name of this view in Looker is "Definition 202102 Glossary Target"
view: definition_202102__glossary__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202102 Glossary Target" in Explore.

  dimension: definition_202102__glossary__target {
    type: string
    sql: definition_202102__glossary__target ;;
  }
}

# The name of this view in Looker is "Definition 202102 Residual References"
view: definition_202102__residual_references {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definition_202102__residual_references {
    type: string
    hidden: yes
    sql: definition_202102__residual_references ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definition 202102 Limiting References"
view: definition_202102__limiting_references {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definition_202102__limiting_references {
    type: string
    hidden: yes
    sql: definition_202102__limiting_references ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definition 202102 Child Groups Symbols"
view: definition_202102__child_groups__symbols {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202102 Child Groups Symbols" in Explore.

  dimension: definition_202102__child_groups__symbols {
    type: string
    sql: definition_202102__child_groups__symbols ;;
  }
}

# The name of this view in Looker is "Definition 202102 Application References"
view: definition_202102__application_references {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definition_202102__application_references {
    type: string
    hidden: yes
    sql: definition_202102__application_references ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definition 202102 Informative References"
view: definition_202102__informative_references {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: definition_202102__informative_references {
    type: string
    hidden: yes
    sql: definition_202102__informative_references ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: description ;;
  }

  dimension: target {
    hidden: yes
    sql: target ;;
  }
}

# The name of this view in Looker is "Definition 202102 Residual References Target"
view: definition_202102__residual_references__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202102 Residual References Target" in Explore.

  dimension: definition_202102__residual_references__target {
    type: string
    sql: definition_202102__residual_references__target ;;
  }
}

# The name of this view in Looker is "Definition 202102 Limiting References Target"
view: definition_202102__limiting_references__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202102 Limiting References Target" in Explore.

  dimension: definition_202102__limiting_references__target {
    type: string
    sql: definition_202102__limiting_references__target ;;
  }
}

# The name of this view in Looker is "Definition 202102 Application References Target"
view: definition_202102__application_references__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202102 Application References Target" in Explore.

  dimension: definition_202102__application_references__target {
    type: string
    sql: definition_202102__application_references__target ;;
  }
}

# The name of this view in Looker is "Definition 202102 Informative References Target"
view: definition_202102__informative_references__target {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Definition 202102 Informative References Target" in Explore.

  dimension: definition_202102__informative_references__target {
    type: string
    sql: definition_202102__informative_references__target ;;
  }
}
