terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = 393039
  api_key    = "9ef6c000495d90b59b7acaa2c3944317ff3aNRAL" # Usually prefixed with 'NRAK'
  region     = "US"                                       # Valid regions are US and EU
}