# Project Progress

This document tracks the progress of the Cloud Platform Engineering Lab and records completed milestones as the project evolves.

---

# Milestone 1 - Foundation

**Status:** ✅ Complete

## Completed

- Raspberry Pi cloud workstation created
- Terraform installed
- AWS CLI installed
- Git repository created
- GitHub integration completed
- SSH identities separated
- Terraform repository structure created
- Initial Terraform modules created
- AWS account created and activated

---

# Milestone 2 - AWS Infrastructure Foundation

**Status:** ✅ Complete

## Completed

- AWS IAM administrative user created
- AWS CLI configured
- Terraform authenticated with AWS
- Terraform bootstrap environment created
- Amazon S3 remote state bucket deployed
- Amazon S3 versioning enabled
- Amazon S3 server-side encryption enabled
- Amazon DynamoDB state locking table deployed
- Remote Terraform backend successfully established

---

# Milestone 3 - AWS Infrastructure Deployment

**Status:** ✅ Complete

## Completed

- Terraform development environment configured
- Terraform remote backend connected
- AWS VPC deployed
- Public subnet deployed
- Private subnet deployed
- Internet Gateway deployed
- Public Route Table deployed
- Route Table association configured
- EC2 Terraform module created
- EC2 Security Group deployed
- EC2 SSH key pair configured
- Amazon Linux EC2 instance deployed
- Terraform outputs configured for EC2 details
- Successful EC2 deployment verified

---

# Milestone 4 - Cloud Platform Services

**Status:** 🚧 In Progress

## Completed

- EC2 server configured using Ansible
- Docker runtime deployed
- Docker Compose platform deployed
- nginx container deployed
- Monitoring stack deployed:
  - Prometheus
  - Grafana
  - Node Exporter
  - cAdvisor
- EC2 security group hardened
- SSH access restricted to administrator IP

## Current Tasks

- Deploy Docker runtime to EC2
- Verify Docker installation
- Configure Docker Compose
- Deploy container platform
- Deploy monitoring stack:
  - Prometheus
  - Grafana
  - Loki
  - Node Exporter
  - cAdvisor
- Integrate security services:
  - CrowdSec
  - Authelia
- Configure GitHub Actions CI/CD
- Explore Kubernetes (k3s)

---

# Milestone 5 - Platform Optimisation

**Status:** ⏳ Planned

## Tasks

- Infrastructure monitoring
- AWS cost monitoring and optimisation
- Automated infrastructure testing
- Disaster recovery documentation
- Multi-environment deployments:
  - Development
  - Test
  - Production
- Platform hardening and security improvements
- Secrets management implementation

---


# Current Project Status

| Milestone | Status |
|-----------|--------|
| Foundation | ✅ Complete |
| AWS Infrastructure Foundation | ✅ Complete |
| AWS Infrastructure Deployment | ✅ Complete |
| Cloud Platform Services | 🚧 In Progress |
| Platform Optimisation | ⏳ Planned |

---

# Next Milestone

The next objective is to complete the container platform layer.

Planned work includes:

- Deploy Docker using Ansible
- Verify Docker service operation
- Configure Docker Compose
- Deploy initial containers
- Build monitoring platform
- Implement security tooling
- Begin CI/CD automation

---

**Last Updated:** 18 July 2026
