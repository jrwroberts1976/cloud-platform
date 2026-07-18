# Cloud Platform Engineering Lab

A production-style cloud engineering project demonstrating Infrastructure as Code, automation, container platforms, monitoring, security and DevOps practices using AWS, Terraform, Ansible, Docker and modern platform engineering principles.

This project is being developed incrementally using industry practices and serves as a practical portfolio demonstrating cloud infrastructure deployment, automation and operational skills.

---

# Project Overview

The objective of this project is to build a complete cloud platform lifecycle:

* Provision infrastructure using Infrastructure as Code
* Automate server configuration
* Deploy containerised workloads
* Implement monitoring and observability
* Secure external access
* Automate operational processes
* Build foundations for Kubernetes and GitOps adoption

The platform demonstrates a complete workflow from developer workstation through to production-style cloud services.

---

# Architecture Overview

```text
Developer Workstation

        |
        |
        v

Git Repository
(GitHub)

        |
        |
        v

Terraform
Infrastructure as Code

        |
        |
        v

AWS Cloud Platform

        |
        |
        v

Ansible Automation

        |
        |
        v

Docker Platform

        |
        |
        +----------------------+
        |                      |
        v                      v

     nginx              Monitoring Stack
 Reverse Proxy                |
        |                     |
        |          +----------+----------+
        |          |          |          |
        v          v          v          v

    Grafana   Prometheus  Node Exporter cAdvisor

Technology Stack
Cloud Infrastructure
AWS
Amazon VPC
Amazon EC2
Amazon S3
DynamoDB Terraform State Locking
Security Groups
IAM
Infrastructure as Code
Terraform
Modular Terraform architecture
Remote state management
Environment separation

Implemented:

✅ AWS networking
✅ VPC deployment
✅ Public subnet
✅ Internet Gateway
✅ Routing
✅ Security Groups
✅ EC2 provisioning

Configuration Management
Ansible
Ansible Roles
Automated server configuration
SSH-based deployment

Implemented:

✅ Server bootstrap
✅ Docker installation
✅ Application deployment
✅ Network configuration
✅ Reverse proxy deployment

Container Platform

Technologies:

Docker
Docker Compose
nginx

Implemented:

✅ Docker runtime
✅ Docker Compose deployments
✅ Shared Docker networking
✅ Container lifecycle management
✅ Reverse proxy architecture

Monitoring and Observability

Implemented:

Service	Purpose
Prometheus	Metrics collection
Grafana	Monitoring dashboards
Node Exporter	Host metrics
cAdvisor	Container metrics

Planned:

Loki
Promtail
Alertmanager
Application monitoring
Security Architecture

Implemented:

✅ AWS Security Groups
✅ Restricted SSH access
✅ Automated infrastructure deployment
✅ Private Docker networking
✅ Reverse proxy architecture

In Progress:

🚧 HTTPS certificates using Let's Encrypt
🚧 Cloudflare DNS integration
🚧 Authentication layer

Planned:

CrowdSec intrusion prevention
Authelia authentication
Security monitoring
Vulnerability scanning
Current Platform Status
Component	Status
Terraform AWS foundation	✅ Complete
Remote Terraform state	✅ Complete
AWS networking	✅ Complete
EC2 deployment	✅ Complete
Security Groups	✅ Complete
Ansible automation	✅ Complete
Docker deployment	✅ Complete
Monitoring stack	✅ Complete
Grafana	✅ Complete
Prometheus	✅ Complete
nginx reverse proxy	✅ Complete
DNS integration	✅ Complete
HTTPS certificates	🚧 In Progress
Authentication	⬜ Planned
Central logging	⬜ Planned
CI/CD pipeline	⬜ Planned
Kubernetes platform	⬜ Planned
Current Deployment

The AWS EC2 instance currently runs:

Service	Purpose	Port
nginx	Web entry point / reverse proxy	80
Prometheus	Metrics database	9090
Grafana	Visualisation platform	3000
Node Exporter	Host metrics	9100
cAdvisor	Container metrics	8080

External access will be provided through:

https://grafana.jrwroberts.co.uk

https://prometheus.jrwroberts.co.uk
Repository Structure
cloud-platform/

├── ansible/
│   ├── inventory/
│   ├── playbooks/
│   └── roles/
│       ├── common/
│       ├── docker/
│       ├── docker-deploy/
│       └── aws-security/
│
├── docker/
│   └── compose/
│
├── docs/
│   ├── Architecture.md
│   ├── Decisions.md
│   ├── Deployment.md
│   └── Roadmap.md
│
├── terraform/
│   ├── bootstrap/
│   ├── environments/
│   │   ├── dev/
│   │   └── prod/
│   │
│   └── modules/
│       ├── ec2/
│       ├── networking/
│       ├── security/
│       └── iam/
│
├── scripts/
│
└── README.md
Deployment Workflow

The platform follows this deployment lifecycle:

Developer Machine

        |
        v

Git Commit

        |
        v

Terraform

Creates AWS Infrastructure

        |
        v

Ansible

Configures EC2 Instance

        |
        v

Docker Compose

Deploys Platform Services

        |
        v

nginx

Provides Secure External Access

        |
        v

Monitoring Platform

Provides Observability

Development Roadmap
Phase 1 - Cloud Foundation ✅

Completed:

Terraform infrastructure
AWS networking
Remote state
EC2 deployment
Security configuration
Phase 2 - Platform Layer ✅

Completed:

Docker platform
Container deployment
Monitoring stack
Shared networking
Phase 3 - Secure Cloud Access 🚧

Current phase:

nginx reverse proxy
HTTPS certificates
Cloudflare DNS
Authentication
Phase 4 - Operations Platform

Planned:

Central logging
Alerting
Backups
Disaster recovery testing
Operational dashboards
Phase 5 - Advanced Platform Engineering

Planned:

Kubernetes (k3s)
GitHub Actions CI/CD
GitOps workflow
Multi-environment deployments
Skills Demonstrated

This project demonstrates practical experience with:

AWS Cloud Infrastructure
Terraform Infrastructure as Code
Ansible Automation
Linux Administration
Docker Container Platforms
Reverse Proxy Architecture
Monitoring and Observability
Networking
Security Engineering
Git Workflows
Platform Engineering Principles
Future Vision

The long-term goal is to demonstrate a complete modern cloud engineering workflow:

Code

 |
 v

GitHub

 |
 v

CI/CD Pipeline

 |
 v

Terraform

 |
 v

AWS Infrastructure

 |
 v

Ansible Configuration

 |
 v

Container Platform

 |
 v

Secure Applications

 |
 v

Monitoring and Operations

Author

James Roberts

Cloud Platform Engineering Lab
