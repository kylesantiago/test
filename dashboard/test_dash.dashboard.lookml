---
- dashboard: hours_table
  title: hours_table
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  refresh: 1 hour
  preferred_slug: msuqbJkbdMyOr4w3Fbt4AH
  elements:
  - title: Committed Hours
    name: Committed Hours
    model: test_proserv
    explore: professional_services
    type: looker_grid
    fields: [professional_services.id, professional_services.approval, professional_services.start_date,
      professional_services.name, professional_services.assignees, professional_services.time_estimate,
      professional_services.status]
    filters:
      professional_services.status: "-Open"
    sorts: [professional_services.start_date desc]
    limit: 500
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
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", professional_services.id, professional_services.assignees,
      professional_services.name, professional_services.start_date, professional_services.time_estimate,
      professional_services.status, professional_services.approval]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      professional_services.id: 98
      professional_services.assignees: 111
      professional_services.name: 236
      professional_services.time_estimate: 129
      professional_services.status: 88
      professional_services.approval: 101
      professional_services.start_date: 106
    defaults_version: 1
    listen:
      Start Date: professional_services.min_date_param
      End Date: professional_services.max_date_param
      Approval: professional_services.approval
    row: 9
    col: 1
    width: 16
    height: 6
  - title: ''
    name: ''
    model: test_proserv
    explore: professional_services
    type: looker_column
    fields: [professional_services.time_estimate, professional_services.start_date,
      professional_services.assignees, professional_services.status]
    filters:
      professional_services.status: "-Open"
    sorts: [professional_services.start_date]
    limit: 500
    column_limit: 50
    total: true
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
    y_axes: [{label: Hours, orientation: left, series: [{axisId: professional_services.time_estimate,
            id: professional_services.time_estimate, name: Time Estimate}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Date
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    defaults_version: 1
    title_hidden: true
    listen:
      Start Date: professional_services.min_date_param
      End Date: professional_services.max_date_param
      Approval: professional_services.approval
    row: 2
    col: 1
    width: 22
    height: 7
  - title: Untitled
    name: Untitled
    model: test_proserv
    explore: professional_services
    type: single_value
    fields: [professional_services.id, professional_services.status, professional_services.time_estimate]
    filters:
      professional_services.status: "-Open"
    sorts: [professional_services.status]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: sum(${professional_services.time_estimate})
      label: Total
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: total
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Hours
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [professional_services.status, professional_services.time_estimate,
      professional_services.id]
    listen:
      Start Date: professional_services.min_date_param
      End Date: professional_services.max_date_param
      Approval: professional_services.approval
    row: 0
    col: 20
    width: 3
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Professional Services Hours"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 1
    width: 7
    height: 2
  - title: Uncommitted Tasks
    name: Uncommitted Tasks
    model: test_proserv
    explore: uncommitted_tasks_test
    type: looker_grid
    fields: [uncommitted_tasks_test.date_created, uncommitted_tasks_test.due_date,
      uncommitted_tasks_test.id, uncommitted_tasks_test.name, uncommitted_tasks_test.status]
    filters:
      uncommitted_tasks_test.due_date: 'NULL'
      uncommitted_tasks_test.status: Open
    sorts: [uncommitted_tasks_test.date_created]
    limit: 500
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
    defaults_version: 1
    hidden_fields: [uncommitted_tasks_test.due_date, uncommitted_tasks_test.id, uncommitted_tasks_test.status]
    listen: {}
    row: 9
    col: 17
    width: 6
    height: 6
  - title: Total Uncommitted Tasks
    name: Total Uncommitted Tasks
    model: test_proserv
    explore: uncommitted_tasks_test
    type: single_value
    fields: [uncommitted_tasks_test.count, uncommitted_tasks_test.due_date, uncommitted_tasks_test.status,
      uncommitted_tasks_test.id]
    filters:
      uncommitted_tasks_test.due_date: 'NULL'
      uncommitted_tasks_test.status: Open
    sorts: [uncommitted_tasks_test.count desc 0]
    limit: 500
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
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_fields: [uncommitted_tasks_test.due_date, uncommitted_tasks_test.status,
      uncommitted_tasks_test.id]
    listen: {}
    row: 0
    col: 16
    width: 4
    height: 2
  filters:
  - name: Start Date
    title: Start Date
    type: field_filter
    default_value: 2023/11/01
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: test_proserv
    explore: professional_services
    listens_to_filters: []
    field: professional_services.min_date_param
  - name: End Date
    title: End Date
    type: field_filter
    default_value: 2023/11/30
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: test_proserv
    explore: professional_services
    listens_to_filters: []
    field: professional_services.max_date_param
  - name: Approval
    title: Approval
    type: field_filter
    default_value: New
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - New
      - Rejected
      - Approved
    model: test_proserv
    explore: professional_services
    listens_to_filters: []
    field: professional_services.approval
