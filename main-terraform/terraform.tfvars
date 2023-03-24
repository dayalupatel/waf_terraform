wafACLname = "TCxWAF"
region = "ap-south-1"
lb_arn = "arn:aws:elasticloadbalancing:ap-south-1:493870764688:loadbalancer/app/ALB-p-Appli-1B0O7FA28V05M/0f45a168012668d1"
TCxLog_S3 = "arn:aws:s3:::aws-waf-logs-tcxwaf"


# command to run this file while terraform init

/* 
terraform init -backend-config="bucket=tcxwafbucket" -backend-config="key=TCxWaf.tfstate" -backend-config="region=ap-south-1" 

*/


