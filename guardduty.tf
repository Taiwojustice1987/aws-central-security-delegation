# Use existing Central GuardDuty detector
data "aws_guardduty_detector" "central" {
  provider = aws.central
}

# Use existing Member GuardDuty detector
data "aws_guardduty_detector" "member" {
  provider = aws.member
}

# Invite member account
resource "aws_guardduty_member" "member_invite" {
  provider    = aws.central
  detector_id = data.aws_guardduty_detector.central.id
  account_id  = var.member_account_id
  email       = var.member_email
  disable_email_notification = true
}
