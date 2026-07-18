
# Cloud Platform Engineering Lab - Architecture

## Overview

The **Cloud Platform Engineering Lab** is a personal cloud engineering project designed to demonstrate modern Infrastructure as Code (IaC), automation, container platforms, monitoring, security, and DevOps practices using:

- AWS
- Terraform
- Ansible
- Docker
- Prometheus
- Grafana
- Linux
- Git

The platform follows a **hybrid cloud architecture**, combining a local Raspberry Pi engineering workstation with AWS cloud infrastructure.

The Raspberry Pi provides the development and automation environment, while AWS hosts cloud-native workloads and platform services.

---

# Architecture Objectives

The objectives of this platform are:

- Demonstrate Infrastructure as Code using Terraform
- Build reusable Terraform modules
- Deploy secure AWS cloud infrastructure
- Implement remote Terraform state management
- Automate server configuration using Ansible
- Deploy container platforms using Docker
- Implement monitoring and observability
- Demonstrate cloud security practices
- Create a documented portfolio project for Cloud Engineering roles

---

# High Level Architecture

```text
                    GitHub Repository

                            |
                            |

                    Raspberry Pi 4
             Cloud Engineering Workstation

                            |
        +-------------------+-------------------+
        |                                       |
        v                                       v

   Terraform                              Ansible
        |                                       |
        +-------------------+-------------------+
                            |
                            v

                     AWS Cloud Platform

                            |
                            v

                         EC2 Instance

                            |
                            v

                    Docker Platform

                            |
        +-------------------+-------------------+
        |                   |                   |
        v                   v                   v

      nginx          Applications        Monitoring


Local Infrastructure
Raspberry Pi 4

The Raspberry Pi acts as the primary cloud engineering workstation.

Responsibilities:

Terraform development
AWS CLI administration
Git source control
Ansible control node
Docker development
Documentation management
Local service hosting
Local Services

Some services remain hosted locally because they require direct hardware access.

BirdNET-Go

Purpose:

USB microphone audio processing
Local AI inference
Wildlife monitoring

Reason for local deployment:

BirdNET-Go requires direct access to audio hardware and is therefore better suited to local infrastructure.

AWS Cloud Platform

The AWS environment is deployed in:

Region: eu-west-2 (London)

Infrastructure is provisioned using Terraform and configured using Ansible.

AWS Infrastructure

The current AWS platform includes:

Completed Infrastructure
Amazon VPC
Public networking
Internet Gateway
Route tables
Security Groups
EC2 compute instance
IAM configuration
Terraform remote state backend
Amazon S3 state storage
DynamoDB state locking
Infrastructure as Code

All AWS infrastructure is managed using Terraform.

Repository structure:

terraform/

├── bootstrap/
│
├── environments/
│   ├── dev/
│   ├── test/
│   └── prod/
│
└── modules/
    ├── networking/
    ├── security-groups/
    ├── ec2/
    ├── iam/
    └── monitoring/

The project follows a modular Terraform design:

Reusable infrastructure modules
Environment-specific deployments
Remote state management

Terraform state:

Amazon S3
     |
     |
DynamoDB State Locking
Configuration Management

Server configuration is automated using Ansible.

Ansible provides:

SSH-based automation
Operating system configuration
Package installation
Docker deployment
Security configuration
Repeatable server builds

Repository structure:

ansible/

├── inventory/
│
├── playbooks/
│
└── roles/
    ├── common/
    ├── docker/
    ├── docker-deploy/
    ├── monitoring/
    └── aws-security/
Container Platform

The AWS EC2 instance runs a Docker-based platform.

Current architecture:

AWS EC2

   |
   |

Docker Engine

   |
   |

Docker Compose

   |
   +-----------------------------+
   |                             |
   v                             v

 nginx                     Monitoring Stack

                               |
              +----------------+----------------+
              |                |                |
              v                v                v

         Prometheus        Grafana       Node Exporter

                                             |
                                             v

                                          cAdvisor
Current Container Services
Service	Purpose	Port
nginx	Web entry point	80
Prometheus	Metrics collection	9090
Grafana	Dashboards and visualisation	3000
Node Exporter	Host metrics	9100
cAdvisor	Container metrics	8080
Monitoring Architecture

The monitoring platform provides visibility into:

Infrastructure health
Operating system metrics
Container performance
Resource utilisation

Current monitoring stack:

Node Exporter
      |
      |
      v

 Prometheus

      |
      |
      v

 Grafana

Future monitoring additions:

Loki
Promtail
Alertmanager
AWS CloudWatch integration
Deployment Lifecycle

Infrastructure follows a Git-based deployment workflow:

Developer Workstation

        |
        v

Git Commit

        |
        v

GitHub Repository

        |
        v

Terraform Plan

        |
        v

Terraform Apply

        |
        v

AWS Infrastructure

        |
        v

Ansible Configuration

        |
        v

Docker Deployment

        |
        v

Monitoring Platform

All infrastructure and configuration changes are version controlled.

Security Architecture

Security is integrated throughout the platform.

Implemented Security Controls
Infrastructure managed as code
AWS Security Groups
Restricted SSH access
Remote Terraform state protection
Version-controlled configuration
Automated security rule deployment
Security Principles
Least privilege access
Secure remote administration
Network isolation
Repeatable deployments
No manual infrastructure changes
Future Security Enhancements

Planned:

Cloudflare DNS integration
HTTPS certificates
CrowdSec security monitoring
Authelia authentication
Secrets management
Repository Structure
cloud-platform/

├── .github/
│
├── ansible/
│
├── diagrams/
│
├── docker/
│
├── docs/
│
├── images/
│
├── kubernetes/
│
├── scripts/
│
├── terraform/
│
└── README.md
Future Architecture

Target platform:

                         GitHub

                            |
                            |

                    Raspberry Pi 4

                            |
        +-------------------+-------------------+
        |                                       |
        v                                       v

    Terraform                              Ansible

        |                                       |

        +-------------------+-------------------+

                            |

                            v

                       AWS Cloud

                            |

                            v

                           EC2

                            |

                            v

                    Docker Platform

                            |

        +-------------------+-------------------+
        |                   |                   |
        v                   v                   v

      nginx          Applications        Monitoring

                                            |
                              +-------------+-------------+
                              |             |             |
                              v             v             v

                         Prometheus     Grafana     Exporters
Future Enhancements

Planned improvements:

Cloudflare DNS integration
nginx reverse proxy configuration
HTTPS certificates
Authentication layer
Centralised logging with Loki
Alertmanager notifications
GitHub Actions CI/CD
Automated Terraform deployments
Infrastructure testing
Kubernetes (k3s)
Secrets management
Disaster recovery documentation
Cost monitoring and optimisation
Current Project Status
Component	Status
Raspberry Pi Workstation	✅ Complete
GitHub Repository	✅ Complete
Terraform Installation	✅ Complete
AWS CLI Installation	✅ Complete
AWS Account	✅ Active
IAM Configuration	✅ Complete
Terraform Bootstrap	✅ Complete
Amazon S3 Remote State	✅ Complete
DynamoDB State Locking	✅ Complete
AWS Networking	✅ Complete
EC2 Deployment	✅ Complete
Security Groups	✅ Complete
Ansible Automation	✅ Complete
Docker Platform	✅ Complete
Monitoring Platform	✅ Complete
Reverse Proxy	🚧 In Progress
HTTPS	⬜ Planned
Central Logging	⬜ Planned
CI/CD	⬜ Planned
Kubernetes	⬜ Planned
Project Vision

The goal is to demonstrate a complete modern Cloud Platform Engineering workflow:

Developer Machine

        |
        v

Git Repository

        |
        v

Infrastructure as Code

        |
        v

AWS Cloud Platform

        |
        v

Configuration Automation

        |
        v

Container Platform

        |
        v

Monitoring & Observability

        |
        v

Secure Production-style Services

Author: James Roberts
Last Updated: 18 July 2026
