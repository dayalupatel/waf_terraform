resource "aws_wafv2_rule_group" "TCxRuleGroup-block" {

  name     = "TCxRuleGroup-block"
  scope    = var.wafScope
  capacity = 10

  rule {
    name     = "TCxGeoRule-block"
    priority = 0
    action {
      block {}
    }
    statement {
      geo_match_statement {
        country_codes = ["CU", "IR", "KP", "SY", "BY", "RU"]
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "TCx-customGeoRule-block"
      sampled_requests_enabled   = true
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "TCx-customGeoRule-block"
    sampled_requests_enabled   = true
  }

}

# resource "aws_wafv2_rule_group" "nikhil-ruleGroup-allow" {

#   name     = "allowd-rule-group"
#   scope    = "REGIONAL"
#   capacity = 10

#   rule {
#     name     = "MyGeoRule-allow"
#     priority = 0
#     action {
#       allow {}
#     }
#     statement {
#       geo_match_statement {
#         country_codes = ["IN"]
#       }
#     }
#     visibility_config {
#       cloudwatch_metrics_enabled = true
#       metric_name                = "AWS-customGeoRule-allow"
#       sampled_requests_enabled   = true
#     }
#   }

#   visibility_config {
#     cloudwatch_metrics_enabled = true
#     metric_name                = "allow-ruleGroup-Security-Config"
#     sampled_requests_enabled   = true
#   }

# }
