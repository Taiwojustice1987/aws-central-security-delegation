# Enable Inspector2 in member account
resource "aws_inspector2_enabler" "member" {
  provider      = aws.member
  account_ids   = [var.member_account_id]
  resource_types = ["EC2", "ECR", "LAMBDA"]
}
