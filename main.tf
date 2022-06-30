terraform {
  required_version = "~> 1.0"

  required_providers {
    pagerduty = {
      source  = "PagerDuty/pagerduty"
      version = "~> 2.0"
    }
  }

  cloud {
    organization = "rdhar"

    workspaces {
      name = "pd-overhaul"
    }
  }
}

provider "pagerduty" {}

resource "pagerduty_business_service" "example" {
  name             = "My Web App"
  description      = "A very descriptive description of this business service"
  point_of_contact = "PagerDuty Admin"
}
