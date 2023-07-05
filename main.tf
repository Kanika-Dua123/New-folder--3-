resource "newrelic_one_dashboard" "Mynewdashboard" {
  for_each    = var.dash1
  name        = each.value.name
  permissions = each.value.permissions

  page {
    name = "1stdashboardpage"

    widget_billboard {
      title  = each.value.title
      row    = each.value.row
      column = each.value.column
      width  = each.value.width
      height = each.value.height

      nrql_query {
        query = each.value.query
      }
    }



    widget_bar {
      title  = each.value.title
      row    = each.value.row
      column = each.value.column
      width  = each.value.width
      height = each.value.height

      nrql_query {
        account_id = each.value.account_id
        query      = each.value.query
      }
    }
  }
}

#   filter_current_dashboard = each.value.filter_current_dashboard 

#   # color customization
#   colors {
#     color = each.value.color
#     series_overrides {
#       color = each.value.color
#       series_name = each.value.series_name
#     }
#     series_overrides {
#       color = each.value.color
#       series_name = each.value.series_name
#     }
#   }
# }

# widget_line {
#   title  = "Average transaction duration and the request per minute, by application"
#   row    = 4
#   column = 7
#   width  = 6
# }
#   nrql_query {
#     account_id = 12345
#     query      = "FROM Transaction select max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago"
#   }

#   nrql_query {
#     query = "FROM Transaction SELECT rate(count(*), 1 minute)"
#   }


