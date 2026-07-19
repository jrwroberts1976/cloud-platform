# Cloud Platform Engineering Lab

A production-style cloud engineering project demonstrating Infrastructure as Code, automation, container platforms, monitoring, security and DevOps practices using AWS, Terraform, Ansible, Docker and modern platform engineering principles.

This project is built incrementally using industry-aligned practices and serves as a practical portfolio demonstrating cloud infrastructure deployment, automation, operational support and platform engineering skills.

---

# Project Overview

The objective of this project is to build a complete cloud platform lifecycle:

- Provision infrastructure using Infrastructure as Code
- Automate server configuration
- Deploy containerised workloads
- Implement monitoring and observability
- Secure external access
- Automate operational processes
- Build foundations for Kubernetes and GitOps adoption

The platform demonstrates a complete workflow from developer workstation through to production-style cloud services.

---

# Architecture Overview

```text
Developer Workstation

        |
        v

GitHub Repository

        |
        v

Terraform
Infrastructure as Code

        |
        v

AWS Cloud Platform

        |
        v

Ansible Automation

        |
        v

Docker Platform

        |
        +-------------------------+
        |                         |
        v                         v

     nginx                 Monitoring Stack
 Reverse Proxy                    |
        |                         |
        |              +----------+----------+
        |              |          |          |
        v              v          v          v

  HTTPS/TLS        Grafana   Prometheus  Node Exporter
  Let's Encrypt                         cAdvisor

        |
        v

Cloudflare DNS
Technology Stack
Cloud Infrastructure

Technologies:

AWS
Amazon VPC
Amazon EC2
Amazon S3
DynamoDB Terraform state locking
Security Groups
IAM

Implemented:

✅ VPC deployment
✅ Public subnet architecture
✅ Internet Gateway
✅ Route tables
✅ Security Groups
✅ EC2 provisioning
✅ Remote Terraform state management
✅ Environment separation

Infrastructure as Code
Terraform

Implemented:

✅ Modular Terraform architecture
✅ AWS provider configuration
✅ Networking modules
✅ EC2 modules
✅ IAM configuration
✅ Security modules
✅ Remote state backend
✅ Infrastructure lifecycle management

Configuration Management
Ansible

The platform uses Ansible roles to automate server configuration and deployment.

Implemented:

✅ Automated server bootstrap
✅ Docker installation
✅ Docker Compose deployment
✅ nginx configuration
✅ Certbot installation
✅ TLS certificate automation
✅ Service configuration
✅ Repeatable deployments

Container Platform

Technologies:

Docker
Docker Compose
nginx

Implemented:

✅ Docker runtime
✅ Container networking
✅ Service deployment
✅ Container lifecycle management
✅ Reverse proxy architecture

Monitoring and Observability

The monitoring platform provides infrastructure and container visibility.

Service	Purpose
Grafana	Dashboards and visualisation
Prometheus	Metrics collection
Node Exporter	Host-level metrics
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
✅ Infrastructure automation
✅ Private Docker networking
✅ HTTPS/TLS encryption
✅ Let's Encrypt certificates
✅ Cloudflare DNS integration

Planned:

CrowdSec intrusion prevention
Authelia authentication
Vulnerability scanning
Security monitoring
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
HTTPS certificates	✅ Complete
Authentication layer	⬜ Planned
Central logging	⬜ Planned
CI/CD pipeline	⬜ Planned
Kubernetes platform	⬜ Planned
Current Deployment

The AWS EC2 instance currently hosts:

Service	Purpose	Port
nginx	HTTPS reverse proxy	80 / 443
Grafana	Monitoring dashboards	3000
Prometheus	Metrics database	9090
Node Exporter	Host metrics	9100
cAdvisor	Container metrics	8080

External services:

https://grafana.jrwroberts.co.uk
https://prometheus.jrwroberts.co.uk
Repository Structure
cloud-platform/

├── ansible/
│   ├── inventory/
│   ├── playbooks/
│   └── roles/
│       ├── docker/
│       ├── docker-deploy/
│       ├── nginx/
│       ├── certbot/
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

The platform follows this lifecycle:

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

nginx + Let's Encrypt

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
Phase 3 - Secure Cloud Access ✅

Completed:

nginx reverse proxy
Cloudflare DNS
HTTPS certificates
Automated certificate renewal
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
nginx Reverse Proxy Architecture
HTTPS/TLS Implementation
Monitoring and Observability
Networking
Security Engineering
Git Workflows
Platform Engineering Principles
Future Vision

The long-term goal is to demonstrate a complete modern cloud engineering workflow:

Code

 |

GitHub

 |

CI/CD Pipeline

 |

Terraform

 |

AWS Infrastructure

 |

Ansible Configuration

 |

Container Platform

 |

Secure Applications

 |

Monitoring and Operations
Author

James Roberts

Cloud Platform Engineering Lab
