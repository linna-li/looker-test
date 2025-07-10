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
        \n    border-radius: 5px;\"\n\n    href=\"https://glg.alationcloud.com/article/1268\"\
        > \n\nDashboard Details\n\n</a>\n\n<a style=\"\n\n\tcolor: #ffffff;\n\n    border:\
        \ solid 0px #ffffff;\n\n    float: left;\n\n    font-weight: 400;\n\n    text-align:\
        \ center;\n\n    vertical-align: middle;\n\n    cursor: pointer;\n\n    user-select:\
        \ none;\n\n    padding: 10px;\n\n    margin-top: 15px;\n\n    font-size: 1rem;\n\
        \n    background: #101328;\n\n    line-height: 1.5;\n\n    border-radius: 5px;\"\
        </div>"
      row: 0
      col: 0
      width: 16
      height: 6
    - title: __
      name: __
      model: looker-dcl-data
      explore: Products
      type: single_value
      fields: [Rank]
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
    - title: Retail price
      name: Retail price
      model: looker-dcl-data
      explore: Products
      type: single_value
      fields: [Products.retail_price]
      sorts: [Products.retail_price desc]
      limit: 2
      column_limit: 10
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: true
      comparison_type: progress_percentage
      comparison_reverse_colors: false
      show_comparison_label: true
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      comparison_label: Target
      hidden_pivots: {}
      defaults_version: 1
      listen:
        Product Name: Product.name
        Product ID: Product.id
      row: 6
      col: 0
      width: 8
      height: 2
