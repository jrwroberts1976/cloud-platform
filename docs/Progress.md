# Project Progress

This document tracks the progress of the Cloud Platform Engineering Lab and records completed milestones as the project evolves.

---

# Milestone 1 - Foundation

**Status:** ✅ Complete

## Completed

* Raspberry Pi cloud workstation created
* Terraform installed
* AWS CLI installed
* Git repository created
* GitHub integration completed
* SSH identities separated
* Terraform repository structure created
* Initial Terraform modules created
* AWS account created and activated

---

# Milestone 2 - AWS Infrastructure Foundation

**Status:** ✅ Complete

## Completed

* AWS IAM administrative user created
* AWS CLI configured
* Terraform authenticated with AWS
* Terraform bootstrap environment created
* Amazon S3 remote state bucket deployed
* Amazon S3 versioning enabled
* Amazon S3 server-side encryption enabled
* Amazon DynamoDB state locking table deployed
* Remote Terraform backend successfully established

---

# Milestone 3 - AWS Infrastructure Deployment

**Status:** ✅ Complete

## Completed

* Terraform development environment configured
* Terraform remote backend connected
* AWS VPC deployed
* Public subnet deployed
* Private subnet deployed
* Internet Gateway deployed
* Public Route Table deployed
* Route Table association configured
* EC2 Terraform module created
* EC2 Security Group deployed
* EC2 SSH key pair configured
* Amazon Linux EC2 instance deployed
* Terraform outputs configured for EC2 details
* Successful EC2 deployment verified

---

# Milestone 4 - Cloud Platform Services

**Status:** 🚧 In Progress

## Completed

### Configuration Management

* Ansible inventory configured
* AWS EC2 host management configured
* Ansible connectivity verified
* Base server configuration automated
* Docker installation automated through Ansible

### Container Platform

* Docker runtime deployed
* Docker service enabled
* Docker user permissions configured
* Docker Compose deployment automated
* nginx container deployed
* Container deployment verified

### Monitoring Platform

Monitoring stack deployed:

* Prometheus
* Grafana
* Node Exporter
* cAdvisor

Verified:

* Containers running successfully
* Monitoring services reachable
* Docker monitoring network operational

### Security and Networking

* EC2 Security Group configured
* SSH access restricted to administrator IP
* HTTP access enabled for web services
* HTTPS access prepared
* Docker proxy network created for reverse proxy architecture

### DNS Migration

Cloud DNS migration started:

* Cloudflare account configured
* `jrwroberts.co.uk` added to Cloudflare
* Registrar nameservers updated

Current Cloudflare nameservers:

```text
darwin.ns.cloudflare.com
pearl.ns.cloudflare.com
```

Status:

⏳ Waiting for DNS propagation

---

# Current Tasks

## In Progress

* Complete Cloudflare DNS migration
* Configure DNS records for AWS services
* Deploy nginx reverse proxy
* Enable HTTPS certificates
* Remove direct public access to application ports

## Planned

* Deploy Loki logging platform
* Integrate CrowdSec security monitoring
* Deploy Authelia authentication
* Configure GitHub Actions CI/CD
* Explore Kubernetes (k3s)

---

# Milestone 5 - Platform Optimisation

**Status:** ⏳ Planned

## Tasks

* Infrastructure monitoring improvements
* AWS cost monitoring and optimisation
* Automated infrastructure testing
* Disaster recovery documentation
* Multi-environment deployments:

  * Development
  * Test
  * Production
* Platform hardening and security improvements
* Secrets management implementation

---

# Current Project Status

| Milestone                     | Status         |
| ----------------------------- | -------------- |
| Foundation                    | ✅ Complete     |
| AWS Infrastructure Foundation | ✅ Complete     |
| AWS Infrastructure Deployment | ✅ Complete     |
| Cloud Platform Services       | 🚧 In Progress |
| Platform Optimisation         | ⏳ Planned      |

---

# Current Architecture

Current platform:

```text
Developer Workstation
        |
        |
     Terraform
        |
        |
       AWS
        |
        |
    EC2 Instance
        |
        |
     Ansible
        |
        |
 Docker Platform
        |
        +----------------+
        |                |
      nginx        Monitoring Stack
                       |
             +---------+---------+
             |         |         |
        Prometheus  Grafana  cAdvisor
                         |
                  Node Exporter
```

Future architecture:

```text
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
Monitoring + Security Platform
```

---

# Next Milestone

The next objective is to complete the public cloud service layer.

Planned work:

* Complete Cloudflare DNS migration
* Configure nginx reverse proxy
* Deploy HTTPS certificates
* Publish services using domain names:

  * cloud.jrwroberts.co.uk
  * grafana.jrwroberts.co.uk
  * prometheus.jrwroberts.co.uk
* Add authentication layer
* Improve security controls

---

**Last Updated:** 18 July 2026
