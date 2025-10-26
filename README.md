# AWS Central Security Project
# AWS Centralized Security Delegation

This project demonstrates how to delegate and manage Amazon GuardDuty and Amazon Inspector2 across multiple AWS accounts using Terraform. It enables a centralized security account to aggregate findings from member accounts, enhancing security monitoring, visibility, and incident response efficiency.

## Features
- Centralized GuardDuty detector setup
- Member account GuardDuty association
- Amazon Inspector2 delegation and enabling
- Fully automated using Terraform
- Outputs and variables aligned for easy management

## Project Goals
- Delegate GuardDuty and Inspector2 to a centralized security account
- Aggregate security findings from all member accounts
- Simplify security operations and incident response

## Requirements
- Terraform >= 1.5.x
- AWS CLI configured with proper profiles for central and member accounts
- IAM users with necessary permissions

## Usage
1. Clone the repository
2. Update `terraform.tfvars` with your account IDs, emails, and region
3. Run:
   ```bash
   terraform init
   terraform plan
   terraform apply

## Architecture

  +----------------------+
  | Central Security AWS |
  | Account              |
  |----------------------|
  | GuardDuty Detector   |
  | Inspector2 Delegation|
  +----------+-----------+
             |
             |
   +---------v---------+
   | Member AWS Account |
   |------------------|
   | GuardDuty Detector |
   | Inspector2 Enable  |
   +------------------+


---

## Features Implemented
- **GuardDuty**
  - Create GuardDuty detectors in both central and member accounts.
  - Invite and accept member accounts.
  - Verify member association status.
  
- **Inspector2**
  - Delegate Inspector2 administration to central account.
  - Enable Inspector2 on member accounts.
  - Verify delegation status.

- **Terraform Management**
  - All resources are provisioned via Terraform.
  - Outputs provide Detector IDs and member associations.

---

## Prerequisites
- AWS CLI installed and configured with multiple profiles:
  - `CENTRAL_AWS_PROFILE` → Central security account
  - `MEMBER_AWS_PROFILE` → Member account
  - `MEMBER_ADMIN_USER` → Admin user in member account
- Terraform >= 1.4.0 installed
- Proper IAM permissions for creating GuardDuty, Inspector2, and delegation.

---

## Terraform Setup

1. **Clone the repository**
```bash
git clone https://github.com/<your-username>/aws-central-security.git
cd aws-central-security
