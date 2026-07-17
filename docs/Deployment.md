# Deployment

## Development Environment

The development environment is managed through Terraform.

Location:

terraform/environments/dev

---

## Terraform Workflow

The standard workflow is:

Initialise:

terraform init

Validate:

terraform validate

Review changes:

terraform plan

Deploy:

terraform apply

---

## Terraform Modules

Reusable components are stored in:

terraform/modules

Current modules:

- networking

Planned modules:

- ec2
- iam
- security-groups
- monitoring

---

## Source Control

All infrastructure changes are committed to Git.

GitHub repository:

cloud-platform

Changes are reviewed through version control before deployment.
