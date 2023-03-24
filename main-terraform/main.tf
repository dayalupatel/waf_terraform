
module "waf-module" {
  source = "../modules/waf-module"
  wafACLname = var.wafACLname
  #aclDescription = var.aclDescription
  wafScope = "REGIONAL"
  lb_arn = var.lb_arn
  TCxLog_S3 = var.TCxLog_S3
}
