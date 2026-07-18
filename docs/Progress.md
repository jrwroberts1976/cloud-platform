# Project Progress

This document tracks the progress of the Cloud Platform Engineering Lab and records completed milestones, current work and future objectives.

---

# Milestone 1 - Foundation

**Status:** ✅ Complete

## Completed

- Raspberry Pi cloud engineering workstation created
- Terraform installed and configured
- AWS CLI installed and configured
- Git repository created
- GitHub integration completed
- SSH identities separated for different environments
- Cloud platform repository structure created
- Initial Terraform module architecture created
- AWS account created and configured

---

# Milestone 2 - AWS Infrastructure Foundation

**Status:** ✅ Complete

## Completed

- AWS IAM administration configured
- AWS CLI authentication configured
- Terraform AWS provider configured
- Terraform bootstrap environment created
- Amazon S3 remote state backend deployed
- S3 bucket versioning enabled
- S3 server-side encryption enabled
- DynamoDB Terraform state locking deployed
- Remote Terraform backend successfully validated

---

# Milestone 3 - AWS Infrastructure Deployment

**Status:** ✅ Complete

## Completed

### Networking

- AWS VPC deployed
- Public subnet deployed
- Private subnet deployed
- Internet Gateway deployed
- Route tables configured
- Network routing validated

### Compute

- EC2 Terraform module created
- Amazon Linux EC2 instance deployed
- SSH key authentication configured
- Terraform outputs created
- EC2 deployment successfully verified

### Security

- AWS Security Group deployed using Infrastructure as Code
- SSH access restricted
- Web access rules automated
- Security configuration managed through Ansible

---

# Milestone 4 - Cloud Platform Services

**Status:** ✅ Complete

## Configuration Management

Completed:

- Ansible control node configured
- AWS inventory created
- SSH connectivity verified
- Server configuration automated
- Docker installation automated
- Repeatable server deployment implemented

Ansible roles created:

```text
ansible/
└── roles/
    ├── common/
    ├── docker/
    ├── docker-deploy/
    ├── monitoring/
    └── aws-security/
Container Platform

Completed:

Docker runtime deployed
Docker service enabled
Docker permissions configured
Docker Compose deployment automated
nginx container deployed
Shared Docker network created
Container deployment verified

Current platform:

AWS EC2

    |
    |
 Docker Engine

    |
    |
 Docker Compose

    |
    +----------------+
    |                |
 nginx        Monitoring Platform
Monitoring Platform

Status: ✅ Complete

Monitoring stack deployed:

Prometheus
Grafana
Node Exporter
cAdvisor

Verified:

Prometheus health endpoint operational
Grafana service operational
Node metrics available
Container metrics available
Monitoring containers communicating correctly

Current monitoring architecture:

Node Exporter
      |
      |
      v
 Prometheus
      |
      |
      v
 Grafana


cAdvisor
      |
      |
      v
Container Metrics
Milestone 5 - Public Cloud Service Layer

Status: 🚧 In Progress

The platform is now moving from infrastructure deployment into production-style service delivery.

Current Work
DNS

Completed:

Cloudflare account configured
Domain added to Cloudflare
Registrar nameservers updated

Cloudflare nameservers:

darwin.ns.cloudflare.com
pearl.ns.cloudflare.com

Current status:

🚧 DNS validation and service publishing in progress

Reverse Proxy

Planned:

Configure nginx reverse proxy
Route services using domain names
Remove direct application port exposure
Implement HTTPS termination

Target services:

cloud.jrwroberts.co.uk

grafana.jrwroberts.co.uk

prometheus.jrwroberts.co.uk
Security Platform

Planned:

HTTPS certificates
Authentication layer
Cloudflare security controls
CrowdSec security monitoring
Authelia authentication
Secrets management
Milestone 6 - Platform Engineering Improvements

Status: ⏳ Planned

Future objectives:

GitHub Actions CI/CD pipelines
Automated Terraform validation
Infrastructure testing
Deployment automation
Centralised logging with Loki
Alertmanager integration
AWS CloudWatch integration
Cost monitoring and optimisation
Disaster recovery documentation
Multi-environment deployments

Target environments:

Development

Test

Production
Current Project Status
Component	Status
Raspberry Pi Workstation	✅ Complete
GitHub Repository	✅ Complete
Terraform Installation	✅ Complete
AWS CLI Configuration	✅ Complete
Terraform Remote State	✅ Complete
DynamoDB State Locking	✅ Complete
AWS Networking	✅ Complete
EC2 Deployment	✅ Complete
Security Groups	✅ Complete
Ansible Automation	✅ Complete
Docker Platform	✅ Complete
Monitoring Platform	✅ Complete
Cloudflare Integration	🚧 In Progress
nginx Reverse Proxy	🚧 In Progress
HTTPS	⏳ Planned
Authentication	⏳ Planned
Central Logging	⏳ Planned
CI/CD Automation	⏳ Planned
Kubernetes	⏳ Planned
Current Architecture
Developer Workstation
(Raspberry Pi 4)

        |
        |
        v

Git Repository

        |
        |
        v

Terraform

        |
        |
        v

AWS Cloud Platform

        |
        |
        v

EC2 Instance

        |
        |
        v

Ansible Configuration

        |
        |
        v

Docker Platform

        |
        +-----------------------+
        |                       |
        v                       v

     nginx              Monitoring Stack

                             |
             +---------------+---------------+
             |               |               |
             v               v               v

        Prometheus       Grafana        Exporters

Future Architecture
Internet

    |

Cloudflare DNS

    |

HTTPS

    |

nginx Reverse Proxy

    |

Docker Services

    |

Monitoring + Logging + Security

    |

Automated Cloud Platform
Project Vision

The objective is to demonstrate a complete modern Cloud Platform Engineering workflow:

Local Development

        |

Git Version Control

        |

Infrastructure as Code

        |

AWS Cloud Infrastructure

        |

Configuration Automation

        |

Container Platform

        |

Monitoring and Observability

        |

Secure Production-style Services

Author: James Roberts

Last Updated: 18 July 2026
