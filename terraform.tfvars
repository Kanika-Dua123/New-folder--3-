dash1 = {
  "dashboard1" = {
    "name"        = "newdash"
    "permissions" = "public_read_only"

    "title"      = "widget 1"
    "row"        = 1
    "column"     = 2
    "width"      = 10
    "height"     = 20
    "query"  = "FROM Transaction SELECT average(duration) FACET appName"
    "query2" = "FROM Transaction SELECT count(*)"
    "account_id" = 3930395
    "title2"      = "widget 2"
    "row2"        = 3
    "column2"     = 1
    "width2"      = 12
    "height2"     = 10
    # "filter_current_dashboard" = "true"
    # "color" = "#722727"
    #   "series_name" = "Node"
  }
}
