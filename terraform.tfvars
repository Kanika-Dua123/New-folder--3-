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
    "account_id" = 3930395
    # "filter_current_dashboard" = "true"
    # "color" = "#722727"
    #   "series_name" = "Node"
  }
}
