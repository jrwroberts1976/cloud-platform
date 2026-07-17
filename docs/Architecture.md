# Architecture

## Overview

This project demonstrates the design and deployment of a hybrid cloud platform using Infrastructure as Code, automation, monitoring, and security best practices.

The platform combines local Raspberry Pi infrastructure with AWS cloud services.

---

## Current Architecture

The current environment consists of:

### Local Infrastructure

Raspberry Pi 4

Responsibilities:
- Terraform workstation
- AWS CLI management
- Git development environment
- Future Ansible controller
- BirdNET-Go remains local due to microphone hardware requirements

### Cloud Platform (AWS)

Planned deployment:

- AWS VPC
- Public and private networking
- EC2 compute
- Docker services
- Monitoring platform

---

## Infrastructure as Code

Terraform is used to manage AWS infrastructure.

Repository structure:

terraform/

- environments/
  - dev
  - test
  - prod

- modules/
  - networking
  - ec2
  - iam
  - monitoring
  - security-groups

Reusable Terraform modules allow environments to share common infrastructure patterns.

---

## Deployment Workflow

Local development machine

↓

GitHub repository

↓

Terraform

↓

AWS Infrastructure

↓

Cloud Services

---

## Design Principles

- Infrastructure should be reproducible.
- Infrastructure changes should be version controlled.
- Cloud resources should be deployed using code.
- Security should be built into the platform.
- Monitoring should be included from the beginning.
