output "central_guardduty_detector_id" {
  value = data.aws_guardduty_detector.central.id
}

output "member_guardduty_detector_id" {
  value = data.aws_guardduty_detector.member.id
}

output "guardduty_member_association" {
  value = aws_guardduty_member.member_invite.account_id
}
