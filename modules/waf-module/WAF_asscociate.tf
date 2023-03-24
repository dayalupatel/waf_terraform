resource "aws_wafv2_web_acl_association" "TCxWAFAssociation" {
  resource_arn = var.lb_arn
  web_acl_arn  = aws_wafv2_web_acl.TCxWaf.arn
}
