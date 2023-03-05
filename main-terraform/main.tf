module "waf-module" {
  source = "../modules/waf-module"
  wafACLname = var.wafACLname
  wafScope = "REGIONAL"
}