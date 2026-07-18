# Cloud Platform Engineering Lab

A production-style cloud engineering project demonstrating Infrastructure as Code, automation, monitoring, security, and DevOps practices using AWS, Terraform, Ansible, Docker, Cloudflare and Kubernetes.

The project is being built incrementally using industry best practices and serves as both a learning platform and a professional portfolio demonstrating modern cloud engineering skills.

---

# Project Goals

* Provision AWS infrastructure using Terraform Infrastructure as Code
* Build reusable Terraform modules for scalable deployments
* Implement secure cloud networking and identity management
* Automate server configuration using Ansible
* Deploy containerised workloads using Docker
* Implement monitoring, logging and observability
* Automate infrastructure deployments using GitHub Actions
* Demonstrate production-style DevOps and Platform Engineering practices

---

# Learning Objectives

This repository demonstrates practical experience with:

* AWS Cloud
* Infrastructure as Code (Terraform)
* Linux Administration
* Configuration Management (Ansible)
* Container Platforms (Docker)
* DevOps Automation
* Platform Engineering
* Cloud Security
* Monitoring and Observability
* GitOps workflows

---

# Technology Stack

## Cloud Infrastructure

* AWS
* Amazon VPC
* Amazon EC2
* Amazon S3
* DynamoDB Terraform State Locking

## Infrastructure as Code

* Terraform
* Modular Terraform architecture
* Remote state management

## Automation

* Ansible
* GitHub Actions (planned)

## Container Platform

* Docker
* Docker Compose
* nginx

## Monitoring and Observability

* Prometheus
* Grafana
* Node Exporter
* cAdvisor
* Loki (planned)

## Security

* Cloudflare DNS
* CrowdSec (planned)
* Authelia (planned)

## Future Platform

* Kubernetes (k3s)

---

# Current Status

| Phase                                  | Status         |
| -------------------------------------- | -------------- |
| Project Foundation                     | ✅ Complete     |
| AWS Bootstrap (Terraform Remote State) | ✅ Complete     |
| AWS Networking                         | ✅ Complete     |
| EC2 Compute                            | ✅ Complete     |
| Configuration Management (Ansible)     | ✅ Complete     |
| Container Platform                     | ✅ Complete     |
| Monitoring and Observability           | 🚧 In Progress |
| DNS and Reverse Proxy                  | 🚧 In Progress |
| Security Platform                      | ⬜ Planned      |
| CI/CD (GitHub Actions)                 | ⬜ Planned      |
| Kubernetes (k3s)                       | ⬜ Planned      |

---

# Current Architecture

The platform currently includes:

* Raspberry Pi cloud engineering workstation
* AWS infrastructure managed through Terraform
* Remote Terraform state stored in Amazon S3
* Terraform state locking using DynamoDB
* AWS VPC networking
* Public and private subnets
* Internet Gateway and routing configuration
* EC2 compute instance
* Restricted SSH security group access
* Automated server configuration using Ansible
* Docker container platform
* Monitoring stack deployment

Current deployed services:

```text
AWS EC2 Instance
        |
        |
     Docker
        |
        +----------------+
        |                |
      nginx          Monitoring
                       |
          +------------+-------------+
          |            |             |
     Prometheus     Grafana     Node Exporter
                                    |
                                cAdvisor
```

---

# Repository Structure

```text
cloud-platform/
│
├── .github/
│   └── workflows/
│       └── GitHub Actions workflows
│
├── ansible/
│   ├── inventory/
│   ├── playbooks/
│   └── roles/
│
├── diagrams/
│   └── Architecture diagrams
│
├── docker/
│   ├── compose/
│   │   ├── applications.yml
│   │   └── monitoring.yml
│   └── monitoring/
│
├── docs/
│   ├── Architecture.md
│   ├── Blockers.md
│   ├── Decisions.md
│   ├── Deployment.md
│   ├── Progress.md
│   └── ProjectRoadmap.md
│
├── kubernetes/
│   └── Kubernetes manifests and Helm charts
│
├── scripts/
│   └── Automation scripts
│
├── terraform/
│   ├── bootstrap/
│   ├── environments/
│   │   ├── dev/
│   │   ├── test/
│   │   └── prod/
│   └── modules/
│       ├── ec2/
│       ├── iam/
│       ├── monitoring/
│       ├── networking/
│       └── security-groups/
│
└── README.md
```

---

# Directory Overview

| Directory                | Purpose                                            |
| ------------------------ | -------------------------------------------------- |
| `.github/workflows`      | CI/CD automation workflows                         |
| `ansible`                | Server configuration and automation                |
| `docker`                 | Container deployments and monitoring configuration |
| `docs`                   | Project documentation and decisions                |
| `diagrams`               | Architecture and infrastructure diagrams           |
| `kubernetes`             | Future Kubernetes manifests                        |
| `scripts`                | Automation utilities                               |
| `terraform/bootstrap`    | Terraform backend creation                         |
| `terraform/environments` | Environment-specific deployments                   |
| `terraform/modules`      | Reusable Terraform modules                         |

---

# Completed Milestones

## AWS Infrastructure

Completed:

* Terraform project structure
* Remote Terraform backend
* Amazon S3 state storage
* DynamoDB state locking
* AWS VPC deployment
* Public subnet deployment
* Private subnet deployment
* Internet Gateway configuration
* Route table configuration
* Security Group deployment
* EC2 deployment
* Terraform outputs

---

## Configuration Management

Completed:

* Ansible installation
* AWS EC2 inventory
* SSH connectivity
* Server configuration automation
* Docker installation automation
* Container deployment automation

---

## Container Platform

Completed:

* Docker runtime deployment
* Docker Compose deployment
* nginx deployment
* Shared Docker proxy network
* Monitoring containers deployed

---

# Current Work

The project is currently moving into the platform access and security layer.

Current objectives:

* Complete Cloudflare DNS migration
* Configure nginx reverse proxy
* Deploy HTTPS certificates
* Publish services using domain names
* Add authentication controls
* Expand monitoring and logging

Target services:

```text
cloud.jrwroberts.co.uk

grafana.jrwroberts.co.uk

prometheus.jrwroberts.co.uk
```

---

# Next Milestone

The next phase is completing the public cloud service layer.

Planned work:

* Finish Cloudflare DNS migration
* Configure nginx reverse proxy
* Enable HTTPS
* Remove direct application port exposure
* Add security controls
* Implement centralised logging
* Begin CI/CD automation

---

# Long-Term Roadmap

Future enhancements:

* Kubernetes (k3s) deployment
* GitHub Actions deployment pipeline
* Automated infrastructure testing
* Centralised logging with Loki
* Cost monitoring and optimisation
* Security hardening
* Secrets management
* Disaster recovery documentation
* Multi-environment deployments
* Hybrid cloud integration with the homelab

---

# Project Vision

The goal is to demonstrate a complete cloud engineering workflow:

```text
Local Development
        |
        v
GitHub Version Control
        |
        v
Terraform Infrastructure as Code
        |
        v
AWS Cloud Infrastructure
        |
        v
Ansible Configuration Management
        |
        v
Docker Platform
        |
        v
Reverse Proxy and DNS
        |
        v
Monitoring, Security and Automation
```

---

**Last Updated:** 18 July 2026
