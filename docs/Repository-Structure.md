# Cloud Platform Repository Structure

## Overview

This document explains the organisation of the `cloud-platform` repository and the purpose of the main files and directories.

The project demonstrates an automated cloud platform deployment using:

* AWS
* Terraform
* Ansible
* Docker
* Nginx
* Let's Encrypt
* Prometheus
* Grafana

---

# Repository Structure

| File / Directory | Purpose                    | Usage                                                                 |
| ---------------- | -------------------------- | --------------------------------------------------------------------- |
| `README.md`      | Main project documentation | Project overview, deployment instructions, architecture summary       |
| `.gitignore`     | Git exclusions             | Prevents secrets, Terraform state and temporary files being committed |
| `ansible.cfg`    | Ansible configuration      | Defines inventory, roles path and SSH behaviour                       |

---

# Terraform

Terraform manages the AWS infrastructure.

| File / Directory                     | Purpose                 | Usage                                    |
| ------------------------------------ | ----------------------- | ---------------------------------------- |
| `terraform/`                         | Infrastructure as Code  | AWS resource provisioning                |
| `terraform/bootstrap/`               | Terraform backend setup | Creates remote state storage and locking |
| `terraform/environments/dev/`        | Development environment | Deploys development AWS resources        |
| `terraform/environments/test/`       | Test environment        | Future testing deployment                |
| `terraform/environments/prod/`       | Production environment  | Future production deployment             |
| `terraform/modules/ec2/`             | EC2 module              | Creates compute instances                |
| `terraform/modules/networking/`      | Network module          | Creates VPC, subnets and gateways        |
| `terraform/modules/security-groups/` | Firewall module         | Controls AWS network access              |
| `terraform/modules/iam/`             | Identity module         | AWS permissions and roles                |
| `terraform/modules/monitoring/`      | Monitoring resources    | AWS monitoring components                |

---

# Ansible

Ansible configures the AWS servers after Terraform deployment.

| File / Directory                 | Purpose               | Usage                                 |
| -------------------------------- | --------------------- | ------------------------------------- |
| `ansible/inventory/aws-dev.ini`  | Server inventory      | Defines managed EC2 hosts             |
| `ansible/inventory/group_vars/`  | Environment variables | Stores configuration values           |
| `ansible/playbooks/platform.yml` | Main playbook         | Executes complete platform deployment |

---

# Ansible Roles

| Role            | Purpose                                       |
| --------------- | --------------------------------------------- |
| `common`        | Base Linux server configuration               |
| `docker`        | Installs Docker and Docker Compose            |
| `docker-deploy` | Deploys application containers                |
| `nginx`         | Configures reverse proxy and routing          |
| `certbot`       | Creates and renews Let's Encrypt certificates |
| `grafana`       | Configures Grafana monitoring                 |
| `aws-security`  | Applies AWS security configuration            |

---

# Container Platform

Docker provides the application runtime environment.

| Component      | Purpose                           |
| -------------- | --------------------------------- |
| Docker Engine  | Runs application containers       |
| Docker Compose | Defines multi-container services  |
| Nginx          | Reverse proxy and SSL termination |
| Grafana        | Monitoring dashboards             |
| Prometheus     | Metrics collection                |
| Node Exporter  | Linux host metrics                |
| cAdvisor       | Docker container metrics          |

---

# Documentation

| File                           | Purpose                            |
| ------------------------------ | ---------------------------------- |
| `docs/Architecture.md`         | System architecture and design     |
| `docs/Deployment.md`           | Deployment process                 |
| `docs/Decisions.md`            | Technology decisions and reasoning |
| `docs/ProjectRoadmap.md`       | Future improvements                |
| `docs/Repository-Structure.md` | Repository organisation guide      |

---

# Diagrams

| Directory   | Purpose                              |
| ----------- | ------------------------------------ |
| `diagrams/` | Infrastructure and network diagrams  |
| `images/`   | Screenshots and documentation images |

---

# Future Expansion

| Directory     | Purpose                                |
| ------------- | -------------------------------------- |
| `kubernetes/` | Future Kubernetes deployment manifests |
| `scripts/`    | Automation and maintenance scripts     |

---

# Skills Demonstrated

| Technology    | Evidence                                    |
| ------------- | ------------------------------------------- |
| AWS           | EC2, VPC, Security Groups, IAM              |
| Terraform     | Modular Infrastructure as Code              |
| Ansible       | Automated configuration management          |
| Linux         | Cloud server administration                 |
| Docker        | Container deployment                        |
| Nginx         | Reverse proxy and HTTPS                     |
| Let's Encrypt | Automated certificates                      |
| Prometheus    | Metrics monitoring                          |
| Grafana       | Visual dashboards                           |
| GitHub        | Source control and documentation            |
| Security      | SSH restrictions and least privilege access |

---

## Project Summary

This repository demonstrates the design and deployment of a complete cloud-hosted platform using modern DevOps practices.

The project automates infrastructure provisioning, server configuration, application deployment, security configuration and monitoring using repeatable Infrastructure as Code principles.
