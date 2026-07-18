# Cloud Platform Engineering Lab

A production-style cloud engineering project demonstrating Infrastructure as Code, automation, container platforms, monitoring, security and DevOps practices using AWS, Terraform, Ansible, Docker and modern platform engineering principles.

This project is being developed incrementally using industry practices and serves as a practical portfolio demonstrating cloud infrastructure deployment, automation and operational skills.

---

# Project Objectives

The goal of this project is to build a complete cloud platform lifecycle:

* Provision cloud infrastructure using Terraform
* Automate configuration using Ansible
* Deploy container platforms using Docker
* Implement monitoring and observability
* Secure cloud workloads
* Automate deployments through GitOps practices
* Build foundations for Kubernetes adoption

---

# Skills Demonstrated

This repository demonstrates practical experience with:

* AWS Cloud Infrastructure
* Infrastructure as Code (Terraform)
* Configuration Management (Ansible)
* Linux Administration
* Docker and container platforms
* Monitoring and Observability
* Networking and Security
* Reverse Proxy Architecture
* Git-based workflows
* Platform Engineering concepts

---

# Technology Stack

## Cloud Platform

* AWS
* Amazon VPC
* Amazon EC2
* Amazon S3
* DynamoDB Terraform State Locking
* Security Groups
* IAM

## Infrastructure as Code

* Terraform
* Modular Terraform architecture
* Remote state management
* Environment-based deployments

## Configuration Management

* Ansible
* Ansible Roles
* Automated server configuration
* SSH-based deployment

## Container Platform

* Docker
* Docker Compose
* nginx

## Monitoring and Observability

* Prometheus
* Grafana
* Node Exporter
* cAdvisor

Planned:

* Loki
* Promtail
* Alertmanager

## Security

Implemented:

* AWS Security Groups
* Restricted SSH access
* Automated firewall rule management

Planned:

* Cloudflare DNS
* HTTPS certificates
* CrowdSec
* Authelia authentication

## Future Platform

Planned:

* Kubernetes (k3s)
* GitHub Actions CI/CD
* GitOps deployment workflow

---

# Current Status

| Component | Status |
|---|---|
| Terraform AWS foundation | ✅ Complete |
| Remote Terraform state | ✅ Complete |
| AWS networking | ✅ Complete |
| EC2 deployment | ✅ Complete |
| Security Groups | ✅ Complete |
| Ansible automation | ✅ Complete |
| Docker deployment | ✅ Complete |
| Monitoring stack | ✅ Complete |
| Grafana platform | ✅ Complete |
| Prometheus monitoring | ✅ Complete |
| Reverse proxy | 🚧 In Progress |
| HTTPS certificates | ⬜ Planned |
| Central logging | ⬜ Planned |
| CI/CD automation | ⬜ Planned |
| Kubernetes platform | ⬜ Planned |

---

# Current Architecture

The current platform runs on AWS EC2 with infrastructure created through Terraform and configured automatically using Ansible.

```text
                    Git Repository
                         |
                         |
                    Ansible
                         |
                         |
                    AWS EC2
                         |
                    Docker Platform
                         |
        +----------------+----------------+
        |                |                |
      nginx         Monitoring        Future Apps
                         |
        +----------------+----------------+
        |                |                |
   Prometheus        Grafana        Node Exporter
                                         |
                                     cAdvisor
```

---

# Current Deployment

The AWS instance currently runs:

| Service | Purpose | Port |
|---|---|---|
| nginx | Web entry point | 80 |
| Prometheus | Metrics collection | 9090 |
| Grafana | Dashboards | 3000 |
| Node Exporter | Host metrics | 9100 |
| cAdvisor | Container metrics | 8080 |

---

# Repository Structure

```text
cloud-platform/

├── ansible/
│   ├── inventory/
│   ├── playbooks/
│   └── roles/
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
```

---

# Completed Work

## AWS Infrastructure

Completed:

✅ Terraform project structure  
✅ Remote state backend  
✅ S3 state storage  
✅ DynamoDB state locking  
✅ VPC deployment  
✅ Public subnet deployment  
✅ Internet Gateway  
✅ Routing configuration  
✅ Security Groups  
✅ EC2 deployment  

---

## Configuration Management

Completed:

✅ Ansible installation  
✅ AWS inventory management  
✅ SSH automation  
✅ Server configuration  
✅ Docker installation  
✅ Automated application deployment  

---

## Container Platform

Completed:

✅ Docker runtime  
✅ Docker Compose deployments  
✅ Shared Docker networking  
✅ nginx deployment  
✅ Monitoring platform deployment  

---

# Current Development Focus

The project is now moving from infrastructure deployment into the platform access and security phase.

Next objectives:

* Configure Cloudflare DNS
* Deploy nginx reverse proxy
* Enable HTTPS certificates
* Remove direct port exposure
* Add authentication
* Implement central logging
* Add monitoring alerts

Target services:

```
cloud.jrwroberts.co.uk

grafana.jrwroberts.co.uk

prometheus.jrwroberts.co.uk
```

---

# Roadmap

## Phase 1 - Cloud Foundation ✅

Completed:

* AWS infrastructure
* Terraform automation
* EC2 deployment
* Security configuration

---

## Phase 2 - Platform Layer ✅

Completed:

* Docker platform
* Application deployment
* Monitoring stack

---

## Phase 3 - Secure Cloud Access 🚧

Planned:

* Reverse proxy
* HTTPS
* DNS integration
* Authentication

---

## Phase 4 - Operations Platform

Planned:

* Central logging
* Alerting
* Backup strategy
* Disaster recovery testing

---

## Phase 5 - Advanced Platform Engineering

Planned:

* Kubernetes
* GitHub Actions
* GitOps workflows
* Multi-environment deployments

---

# Project Vision

The aim is to demonstrate a complete modern cloud engineering workflow:

```text
Developer Machine
        |
        v
Git Repository
        |
        v
Terraform Infrastructure as Code
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
        v
Monitoring & Observability
        |
        v
Secure Production-style Services
```

---

# Author

James Roberts

Cloud Platform Engineering Lab

---

**Last Updated: 18 July 2026**
