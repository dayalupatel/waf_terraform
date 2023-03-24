resource "aws_wafv2_web_acl_logging_configuration" "TCxWAF_log_s3" {
  log_destination_configs = [var.TCxLog_S3]
  resource_arn            = aws_wafv2_web_acl.TCxWaf.arn
  redacted_fields {
  }
}