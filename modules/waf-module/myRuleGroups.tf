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
      sampled_requests_enabled   = false
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "TCx-customGeoRule-block"
    sampled_requests_enabled   = false
  }

}

# resource "aws_wafv2_rule_group" "TCxRuleGroup-allow" {

#   name     = "TCxRuleGroup-allow"
#   scope    = var.wafScope
#   capacity = 10

#   rule {
#     name     = "TCxGeoRule-allow"
#     priority = 6
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
#       metric_name                = "TCx-customGeoRule-allow"
#       sampled_requests_enabled   = false
#     }
#   }

#   visibility_config {
#     cloudwatch_metrics_enabled = true
#     metric_name                = "TCx-customGeoRule-allow"
#     sampled_requests_enabled   = false
#   }

# }
