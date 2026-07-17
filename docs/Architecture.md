# Architecture

## Overview

The Cloud Platform project is a personal cloud engineering initiative designed to demonstrate modern infrastructure deployment, automation, monitoring, and security practices using Infrastructure as Code (IaC).

The project adopts a **hybrid cloud architecture**, combining a local Raspberry Pi environment with AWS cloud infrastructure.

The Raspberry Pi hosts services that require direct hardware access, while cloud-native services are deployed and managed within AWS using Terraform.

---

# Objectives

The primary objectives of the project are to:

* Demonstrate Infrastructure as Code using Terraform.
* Build reusable Terraform modules for cloud infrastructure.
* Deploy secure AWS networking.
* Automate infrastructure deployments.
* Implement monitoring and observability.
* Demonstrate DevOps and Platform Engineering best practices.
* Produce a fully documented portfolio suitable for Cloud Engineering roles.

---

# Current Architecture

## Local Infrastructure

### Raspberry Pi 4

The Raspberry Pi acts as the primary cloud engineering workstation and local services host.

Current responsibilities include:

* Terraform development
* AWS CLI management
* Git source control
* Ansible control node
* Local Docker development
* Project documentation

### Local Services

Some services remain permanently hosted locally because they require direct access to physical hardware.

Current local services include:

* BirdNET-Go (USB microphone audio processing)

---

# AWS Cloud Platform

The AWS environment will host cloud-native infrastructure and services managed entirely through Terraform.

Planned infrastructure includes:

* Virtual Private Cloud (VPC)
* Public and private subnets
* Internet Gateway
* Route Tables
* Security Groups
* EC2 Instances
* IAM Roles
* CloudWatch integration

Infrastructure will be deployed into the **eu-west-2 (London)** AWS Region.

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

Reusable modules provide consistency across development, testing and production environments while reducing duplication.

---

# Repository Structure

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

Each directory has a dedicated purpose:

| Directory  | Purpose                             |
| ---------- | ----------------------------------- |
| terraform  | Infrastructure as Code              |
| ansible    | Configuration management            |
| kubernetes | Future Kubernetes manifests         |
| docker     | Container definitions               |
| scripts    | Automation utilities                |
| docs       | Project documentation               |
| diagrams   | Architecture diagrams               |
| images     | Supporting screenshots and graphics |

---

# Deployment Workflow

Infrastructure follows a GitOps-inspired workflow.

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
Terraform
    │
    ▼
AWS Infrastructure
```

All infrastructure changes are version controlled before deployment.

---

# Monitoring Strategy

The long-term monitoring platform will include:

* Prometheus
* Grafana
* Loki
* Node Exporter
* cAdvisor
* CloudWatch integration

Monitoring will provide visibility into:

* Infrastructure health
* Container performance
* Operating system metrics
* Application logs
* Security events

---

# Security Principles

Security is considered throughout the platform design.

Key principles include:

* Least privilege IAM permissions
* Infrastructure managed as code
* Secure remote administration
* Encrypted communications
* Network segmentation
* Security group isolation
* Version controlled infrastructure
* Regular software updates

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
 BirdNET-Go                                 Terraform / AWS CLI
(Local Hardware)                                   │
                                                    ▼
                                            AWS (eu-west-2)
                                                    │
                                           Virtual Private Cloud
                                                    │
                 ┌──────────────────────────────────┼──────────────────────────────────┐
                 │                                  │                                  │
                 ▼                                  ▼                                  ▼
          Public Subnet                     Private Subnet                    Future Services
                 │                                  │
                 ▼                                  ▼
           EC2 Instances                  Container Platform
                                                   │
                                                   ▼
                                   Monitoring • Automation • Security
```

---

# Future Enhancements

Planned improvements include:

* GitHub Actions CI/CD pipelines
* Automated Terraform deployments
* Remote Terraform state using S3 and DynamoDB
* Docker container platform
* Kubernetes (k3s) deployment
* Centralised secrets management
* Automated infrastructure testing
* Multi-environment deployment strategy
* Disaster recovery documentation
* Cost monitoring and optimisation

---

# Current Project Status

| Component                      | Status         |
| ------------------------------ | -------------- |
| Raspberry Pi Workstation       | ✅ Complete     |
| GitHub Repository              | ✅ Complete     |
| Terraform Installation         | ✅ Complete     |
| AWS CLI Installation           | ✅ Complete     |
| Terraform Repository Structure | ✅ Complete     |
| Networking Module              | ✅ Complete     |
| AWS Account                    | ✅ Active       |
| Terraform Remote Backend       | 🚧 Planned     |
| AWS Networking Deployment      | 🚧 In Progress |
| EC2 Deployment                 | ⏳ Planned      |
| Monitoring Platform            | ⏳ Planned      |
| Kubernetes                     | ⏳ Planned      |
