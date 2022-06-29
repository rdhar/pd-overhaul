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

provider "pagerduty" {
  token = env.PAGERDUTY_TOKEN
}

resource "pagerduty_team" "engineering" {
  name        = "Engineering"
  description = "All engineering"
}
