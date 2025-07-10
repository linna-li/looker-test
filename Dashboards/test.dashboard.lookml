- dashboard: test
  title: Test
  layout: newspaper
  preferred_viewer: dashboards-next
  description: 'This is a reproduction attempt'
  filters_location_top: false
  elements:
    - name: ''
      type: text
      title_text: ''
      subtitle_text: ''
      body_text: "###About this Dashboard\n\
        \nThis dashboard was created for reproduction purposes. \n\n<div style=\"border-radius: 0px; padding:\
        \ 0px; height: 67px;\">\n\n<div style=\"text-align: center; display: inline-block;\"\
        >\n\n<a style=\"\n\n\tcolor: #ffffff;\n\n    border: solid 0px #ffffff;\n\n\
        \    float: left;\n\n    font-weight: 400;\n\n    text-align: center;\n\n  \
        \  vertical-align: middle;\n\n    cursor: pointer;\n\n    user-select: none;\n\
        \n    padding: 10px;\n\n    margin-right: 15px;\n\n   margin-top: 15px;\n\n\
        \    font-size: 1rem;\n\n    background: #101328;\n\n    line-height: 1.5;\n\
        \n    border-radius: 5px;\"\n\n
        > \n\nDashboard Details\n\n</a>\n\n
        </div>"
      row: 0
      col: 0
      width: 16
      height: 6
    - title: __
      name: __
      model: looker-dcl-data
      explore: products
      type: single_value
      fields: [products.rank]
      limit: 1
      column_limit: -1
      query_timezone: America/New_York
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      enable_conditional_formatting: false
      custom_color: ''
      single_value_title: Hours since Last Data Refresh
      show_view_names: false
      show_row_numbers: false
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      hidden_fields: []
      note_state: collapsed
      note_display: hover
      note_text: testing
      y_axes: []
      listen: {}
      row: 2
      col: 16
      width: 8
      height: 2
    - name: Dashboards
      type: text
      title_text: Dashboards
      subtitle_text:
      row: 5
      col: 0
      width: 24
      height: 1
    - name: add_a_unique_name_1752179803
      title: Untitled Visualization
      model: looker-dcl-data
      explore: products
      type: single_value
      fields: [products.retail_price]
      filters:
        products.rank: ">900"
      sorts: [products.retail_price desc]
      limit: 1
      column_limit: 50
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
    - name: add_a_unique_name_1752181872
      title: Untitled Visualization
      model: looker-dcl-data
      explore: products
      type: looker_grid
      fields: [products.item_name, products.rank, products.retail_price]
      sorts: [products.rank]
      limit: 5
      column_limit: 50
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      hidden_pivots: {}
    - name: add_a_unique_name_1752182132
      title: Untitled Visualization
      model: looker-dcl-data
      explore: products
      type: looker_grid
      fields: [products.category, products.retail_price]
      sorts: [products.retail_price desc]
      limit: 5
      column_limit: 50
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      hidden_pivots: {}

      filters:
    - name: products
      title: products item name
      type: field_filter
      default_value: ''
      allow_multiple_values: true
      required: false
      ui_config:
        type: advanced
        display: popover
      model: looker-dcl-data
      explore: products
      listens_to_filters: []
      field: products.item_name

    - name: products id
      title: products id
      type: field_filter
      default_value: ''
      allow_multiple_values: true
      required: false
      ui_config:
        type: advanced
        display: popover
        options: []
      model: looker-dcl-data
      explore: products
      listens_to_filters: []
      field: products.id

    - name: category
      title: category
      type: field_filter
      default_value: 2 year
      allow_multiple_values: true
      required: true
      ui_config:
        type: advanced
        display: overflow
        options: []
      model: looker-dcl-data
      explore: products
      listens_to_filters: []
      field: products.category
