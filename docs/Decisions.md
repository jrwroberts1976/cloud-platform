# Architecture Decisions

## Decision: Use Terraform for Infrastructure Management

Date:
July 2026

### Reason

Terraform was selected because it is widely adopted in cloud engineering roles and supports Infrastructure as Code practices.

Benefits:

- Repeatable deployments
- Version controlled infrastructure
- Multi-environment support
- Cloud provider flexibility

---

## Decision: Use Terraform Modules

Date:
July 2026

### Reason

Reusable modules provide consistency between environments.

Example:

networking module

used by:

- dev
- test
- production

This reduces duplication and improves maintainability.

---

## Decision: Keep BirdNET-Go Local

Date:
July 2026

### Reason

BirdNET-Go requires direct microphone access.

The Raspberry Pi remains responsible for audio processing while cloud infrastructure hosts suitable services.
