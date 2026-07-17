# Project Progress

This document records the major milestones achieved during the development of the Cloud Platform project.

---

# Project Vision

Build a production-style cloud platform demonstrating modern Cloud Engineering, DevOps and Platform Engineering practices using AWS, Terraform, Docker, Kubernetes and Infrastructure as Code.

The project will evolve from a local homelab into a hybrid cloud platform while maintaining full documentation and version control throughout the project lifecycle.

---

# Milestone 1 – Foundation ✅

**Status:** Complete

## Development Environment

* Raspberry Pi 4 configured as the primary cloud engineering workstation.
* Debian 13 (Trixie) installed and updated.
* Git configured for source control.
* GitHub repository created and connected.
* SSH authentication configured for multiple repositories.

## Development Tools

Installed and verified:

* Terraform
* AWS CLI
* Git

## Repository

Created the initial project structure:

```text
cloud-platform/
├── ansible/
├── diagrams/
├── docker/
├── docs/
├── images/
├── kubernetes/
├── scripts/
└── terraform/
```

## Documentation

Created project documentation including:

* Architecture
* Deployment
* Design Decisions
* Project Roadmap
* Progress Tracking
* Blockers

## Terraform

Created the initial Terraform project structure.

Implemented environments for:

* Development
* Test
* Production

Created reusable Terraform modules:

* Networking
* EC2
* IAM
* Monitoring
* Security Groups

## Source Control

Successfully connected the repository to GitHub using SSH authentication.

Implemented separate SSH identities for:

* Existing homelab repository
* Cloud Platform repository
* Future AWS EC2 access

---

# Milestone 2 – AWS Platform 🚧

**Status:** In Progress

## AWS

Completed:

* AWS account created
* AWS account activation completed
* IAM administrative user created
* AWS CLI installed and prepared

Next Steps:

* Configure AWS CLI credentials
* Verify AWS authentication
* Create Terraform remote backend
* Deploy AWS networking
* Deploy first EC2 instance

---

# Milestone 3 – Infrastructure as Code 🚧

**Status:** In Progress

Completed:

* Terraform installed
* Project structure created
* Initial networking module developed
* Development environment updated to consume reusable modules

Planned:

* Remote Terraform state (S3)
* State locking (DynamoDB)
* Multi-environment deployments
* Automated validation
* Automated formatting

---

# Milestone 4 – Monitoring & Observability ⏳

**Status:** Planned

Planned components:

* Prometheus
* Grafana
* Loki
* Node Exporter
* cAdvisor
* CloudWatch integration

Objectives:

* Infrastructure monitoring
* Container monitoring
* Log aggregation
* Dashboard creation
* Alerting

---

# Milestone 5 – Platform Services ⏳

**Status:** Planned

Services intended for AWS deployment include:

* Reverse Proxy
* Authentication
* Monitoring Stack
* Supporting Docker services

BirdNET-Go will remain on the Raspberry Pi because it requires direct USB microphone access.

---

# Milestone 6 – Automation ⏳

**Status:** Planned

Objectives:

* GitHub Actions
* Terraform automation
* Infrastructure validation
* Automated deployments
* Continuous Integration
* Continuous Delivery

---

# Milestone 7 – Kubernetes ⏳

**Status:** Planned

Future objectives:

* Deploy k3s
* Container orchestration
* GitOps workflow
* Helm
* Kubernetes monitoring

---

# Skills Demonstrated

Current project demonstrates experience with:

* Linux Administration
* Git & GitHub
* Infrastructure as Code
* Terraform
* AWS
* SSH Key Management
* Project Documentation
* Technical Architecture
* DevOps Workflows

Planned additions include:

* VPC Design
* EC2
* IAM
* Cloud Networking
* Docker
* Kubernetes
* Ansible
* CI/CD
* Cloud Monitoring
* Security Automation

---

# Current Status Summary

| Area                        | Status       |
| --------------------------- | ------------ |
| Raspberry Pi Workstation    | ✅ Complete   |
| GitHub Repository           | ✅ Complete   |
| Git Workflow                | ✅ Complete   |
| Terraform Installation      | ✅ Complete   |
| AWS CLI Installation        | ✅ Complete   |
| Project Documentation       | ✅ Complete   |
| Terraform Structure         | ✅ Complete   |
| Terraform Networking Module | ✅ Complete   |
| AWS Account                 | ✅ Active     |
| IAM User                    | ✅ Created    |
| AWS Authentication          | 🚧 Next Step |
| Terraform Remote Backend    | ⏳ Planned    |
| AWS Networking              | ⏳ Planned    |
| EC2 Deployment              | ⏳ Planned    |
| Monitoring Platform         | ⏳ Planned    |
| Kubernetes                  | ⏳ Planned    |

---

# Immediate Next Actions

1. Configure AWS CLI authentication.
2. Verify access using AWS STS.
3. Create Terraform remote state (S3 and DynamoDB).
4. Configure Terraform backend.
5. Deploy the AWS VPC using Terraform.
6. Deploy supporting networking components.
7. Launch the first EC2 instance.

---

*Last Updated: 17 July 2026*
