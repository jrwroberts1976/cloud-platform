# Architecture

## Overview

The Cloud Platform Engineering Lab is a personal cloud engineering project designed to demonstrate modern Infrastructure as Code (IaC), automation, monitoring, security and DevOps practices using AWS and Terraform.

The platform adopts a **hybrid cloud architecture**, combining a local Raspberry Pi development environment with AWS cloud infrastructure.

The Raspberry Pi serves as both the cloud engineering workstation and the host for services requiring direct hardware access, while cloud-native infrastructure is provisioned and managed in AWS using Terraform.

---

# Objectives

The primary objectives of the project are to:

- Demonstrate Infrastructure as Code using Terraform.
- Build reusable Terraform modules.
- Deploy secure AWS networking.
- Implement remote Terraform state management.
- Automate infrastructure deployments.
- Implement monitoring and observability.
- Demonstrate DevOps and Platform Engineering best practices.
- Produce a fully documented portfolio suitable for Cloud Engineering roles.

---

# Current Architecture

## Local Infrastructure

### Raspberry Pi 4

The Raspberry Pi acts as the primary cloud engineering workstation.

Current responsibilities include:

- Terraform development
- AWS CLI administration
- Git source control
- Ansible control node
- Docker development
- Project documentation

### Local Services

Some services remain permanently hosted locally because they require direct hardware access.

Current local services include:

- BirdNET-Go (USB microphone audio processing)

---

# AWS Cloud Platform

Infrastructure is deployed into the **eu-west-2 (London)** AWS Region.

## Completed

The AWS foundation has been established using Terraform.

Current deployed resources include:

- Amazon S3 Terraform remote state bucket
- Amazon DynamoDB Terraform state locking table
- IAM user for Terraform administration

## Planned Infrastructure

The cloud platform will expand to include:

- Virtual Private Cloud (VPC)
- Public Subnets
- Private Subnets
- Internet Gateway
- Route Tables
- Security Groups
- EC2 Instances
- IAM Roles
- CloudWatch integration

---

# Infrastructure as Code

All AWS infrastructure is managed using Terraform.

Repository layout:

```text
terraform/
├── bootstrap/
├── environments/
│   ├── dev/
│   ├── test/
│   └── prod/
└── modules/
    ├── networking/
    ├── security-groups/
    ├── ec2/
    ├── iam/
    └── monitoring/
```

The project follows a modular Terraform architecture, separating reusable modules from environment-specific configuration.

Terraform remote state is stored in Amazon S3 with state locking provided by Amazon DynamoDB.

---

# Repository Structure

```text
cloud-platform/
├── .github/
├── ansible/
├── diagrams/
├── docker/
├── docs/
├── images/
├── kubernetes/
├── scripts/
└── terraform/
```

| Directory | Purpose |
|------------|---------|
| terraform | Infrastructure as Code |
| ansible | Configuration management |
| kubernetes | Kubernetes manifests (planned) |
| docker | Container definitions |
| scripts | Automation utilities |
| docs | Project documentation |
| diagrams | Architecture diagrams |
| images | Supporting screenshots and graphics |

---

# Deployment Workflow

Infrastructure follows a Git-based Infrastructure as Code workflow.

```text
Developer

    │

    ▼

Git Commit

    │

    ▼

GitHub Repository

    │

    ▼

Terraform Plan

    │

    ▼

Terraform Apply

    │

    ▼

AWS Infrastructure

    │

    ▼

Amazon S3 Remote State
+
DynamoDB State Locking
```

All infrastructure changes are version controlled before deployment.

---

# Monitoring Strategy

The long-term monitoring platform will include:

- Prometheus
- Grafana
- Loki
- Node Exporter
- cAdvisor
- CloudWatch integration

Monitoring will provide visibility into:

- Infrastructure health
- Container performance
- Operating system metrics
- Application logs
- Security events

---

# Security Principles

Security is integrated throughout the platform.

Key principles include:

- Least privilege IAM permissions
- Infrastructure managed as code
- Secure remote administration
- Encrypted communications
- Remote Terraform state protection
- Network segmentation
- Security Group isolation
- Version-controlled infrastructure
- Regular software updates

---

# Target Architecture

```text
                           GitHub
                              │
                              │
                       Version Control
                              │
                              ▼
                     Raspberry Pi 4
               Cloud Engineering Workstation
                              │
        ┌─────────────────────┴─────────────────────┐
        │                                           │
        ▼                                           ▼
 BirdNET-Go                               Terraform / AWS CLI
(Local Hardware)                                   │
                                                    ▼
                                            AWS (eu-west-2)
                                                    │
                                     Terraform Remote Backend
                                      ┌────────────┴────────────┐
                                      │                         │
                                      ▼                         ▼
                               Amazon S3                  DynamoDB
                             Terraform State             State Locking
                                      │
                                      ▼
                               Virtual Private Cloud
                                      │
                 ┌────────────────────┼────────────────────┐
                 │                    │                    │
                 ▼                    ▼                    ▼
          Public Subnet        Private Subnet      Future Services
                 │                    │
                 ▼                    ▼
          EC2 Instances      Container Platform
                                       │
                                       ▼
                        Monitoring • Automation • Security
```

---

# Future Enhancements

Planned improvements include:

- GitHub Actions CI/CD pipelines
- Automated Terraform deployments
- Docker container platform
- Kubernetes (k3s)
- Centralised secrets management
- Automated infrastructure testing
- Multi-environment deployments
- Disaster recovery documentation
- Cost monitoring and optimisation

---

# Current Project Status

| Component | Status |
|-----------|--------|
| Raspberry Pi Workstation | ✅ Complete |
| GitHub Repository | ✅ Complete |
| Terraform Installation | ✅ Complete |
| AWS CLI Installation | ✅ Complete |
| AWS Account | ✅ Active |
| IAM Configuration | ✅ Complete |
| Terraform Bootstrap | ✅ Complete |
| Amazon S3 Remote State | ✅ Complete |
| DynamoDB State Locking | ✅ Complete |
| AWS Networking | 🚧 In Progress |
| EC2 Deployment | ⏳ Planned |
| Configuration Management | ⏳ Planned |
| Monitoring Platform | ⏳ Planned |
| Kubernetes | ⏳ Planned |
| CI/CD | ⏳ Planned |
