# Architecture

## Overview

This project demonstrates the design, deployment, and operation of a hybrid cloud platform using Infrastructure as Code, automation, monitoring, and security best practices.

## Objectives

* Provision AWS infrastructure using Terraform.
* Configure systems using Ansible.
* Deploy containerised applications using Docker.
* Implement monitoring and observability.
* Secure services using modern authentication and threat detection.
* Maintain hybrid connectivity between cloud services and on-premises infrastructure.

## Target Architecture

Home Raspberry Pi 4

* BirdNET-Go
* Local microphone access

↓

Secure VPN Connectivity

↓

AWS Cloud Platform

* VPC
* EC2
* Security Groups
* Docker Services

↓

Monitoring & Observability

* Grafana
* Prometheus
* Loki
* Promtail

↓

Identity & Security

* Authelia
* CrowdSec
* TLS Certificates
