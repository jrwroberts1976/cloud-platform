# Project Blockers

This document records issues that prevent progress on the project, along with their resolution.

---

# Current Status

**There are currently no active project blockers.**

Development is continuing as planned.

---

# Resolved Blockers

## AWS Account Activation

**Status:** ✅ Resolved

**Date Identified:** 17 July 2026

**Date Resolved:** 17 July 2026

### Description

Initial AWS infrastructure deployment was blocked while waiting for AWS account activation and verification.

The local development environment was completed during this period, including:

* Raspberry Pi 4 cloud engineering workstation
* Terraform installation
* AWS CLI installation
* GitHub repository creation
* Terraform project structure
* Reusable Terraform modules
* Project documentation

### Resolution

AWS account activation completed successfully.

The following prerequisites are now available:

* AWS account active
* IAM administrative user created
* Programmatic access configured
* Ready to configure AWS CLI credentials
* Ready to begin Terraform deployments

### Outcome

The project can now progress to infrastructure deployment using Terraform.

---

# Future Blocker Process

Any future blockers will be recorded in this document using the following format:

* Description of the issue
* Date identified
* Impact on the project
* Workaround (if available)
* Resolution
* Lessons learned

Maintaining a blocker log provides visibility into project risks and documents how issues were resolved throughout the project lifecycle.

---

# Next Phase

The project now moves into **AWS Infrastructure Deployment**.

Immediate priorities are:

1. Configure AWS CLI authentication.
2. Verify AWS access using AWS STS.
3. Create the Terraform remote backend (S3 and DynamoDB).
4. Deploy the AWS Virtual Private Cloud (VPC).
5. Deploy supporting networking components.
6. Launch the first EC2 instance.

---

*Last Updated: 17 July 2026*
