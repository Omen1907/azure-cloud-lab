# Azure Infrastructure Governance & Terraform Standardization Lab

Infrastructure-as-Code lab project built with Terraform and Microsoft Azure to simulate operational responsibilities during a junior cloud engineer onboarding scenario.

This project represents the **Day 2 operational improvements** after an initial environment audit and remediation phase.

Focus areas include:

- Terraform standardization
- Remote state management
- Azure governance policies
- Modular infrastructure design
- CI validation workflows
- Infrastructure consistency and maintainability

---

# Scenario

This repository simulates inheriting a partially unmanaged Azure environment and improving it through operational engineering practices.

The objective was not to build a perfect greenfield environment, but to:

- Identify inconsistencies
- Reduce operational risk
- Improve infrastructure maintainability
- Introduce governance safely
- Prepare the environment for team scalability

---

# Day 2 Objectives Completed

## Terraform Improvements

- Configured remote Terraform state using Azure Storage
- Reduced hardcoded infrastructure values
- Split infrastructure into reusable modules
- Improved dependency referencing between resources

## Governance & Policy

Implemented Azure Policies for:

- Required resource tags
- Allowed deployment regions

Policies were initially deployed using `Audit` effects to safely validate behavior before broader enforcement.

## CI/CD Validation

Added GitHub Actions workflows to automatically run:

- `terraform fmt`
- `terraform validate`
- `terraform plan`

This helps prevent invalid infrastructure changes before deployment.

---

# Architecture Overview

## Current Components

- Resource Groups
- Virtual Networks
- Subnets
- Storage Accounts
- Public IPs
- Network Interfaces
- Azure Policy Assignments
- Remote Terraform State Backend

---

# Project Structure

```
.
├── .github/
│   └── workflows/
│       └── terraform.yml
│
├── envs/
│   └── dev/
│       ├── main.tf
│       ├── variables.tf
│       ├── terraform.tfvars
│       └── provider.tf
│
├── modules/
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── policy/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
└── README.md
```

---

# Remote State Configuration

Terraform state is stored remotely in Azure Storage to support:

- Team collaboration
- State consistency
- Reduced risk of local state conflicts

# Backend Configuration (AzureRM)

```hcl
terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatestorage"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}
```

---

# Azure Policy Implementation

## Policies Added

|Policy|Effect|Scope|
|---|---|---|
|Require Tags|Audit|Resource Group|
|Allowed Locations|Deny|Resource Group|

## Required Tags

```
tags = {  env         = "dev"  owner       = "mikhael"  cost-center = "lab"}
```

---

# Terraform Modules

## Network Module

Responsible for:

- Virtual Network deployment
- Subnet creation
- Networking outputs for dependent resources

## Policy Module

Responsible for:

- Azure Policy Definitions
- Azure Policy Assignments
- Governance enforcement logic

---

# GitHub Workflow Validation

CI workflow validates Terraform changes before deployment.

Current checks:

- Formatting validation
- Configuration validation
- Execution planning

This improves deployment safety and infrastructure consistency.

---

# Deployment Workflow

## Initialize Terraform

```
terraform init
```

## Validate Infrastructure

```
terraform validate
```

## Review Planned Changes

```
terraform plan
```

## Apply Infrastructure

```
terraform apply
```

---

# Operational Decisions

## Why Policies Were Scoped to Resource Groups

Policies were initially scoped at the Resource Group level to:

- Reduce blast radius
- Safely test governance behavior
- Avoid accidental subscription-wide deployment failures

## Why Audit Was Used First

Audit mode was selected initially to:

- Observe policy violations safely
- Prevent deployment disruption
- Validate Terraform compatibility before enforcing deny policies

## Why Infrastructure Was Modularized

Splitting infrastructure into modules improves:

- Reusability
- Readability
- Maintenance
- Team scalability

---

# Future Improvements

Planned enhancements:

- Multi-environment deployments (`dev`, `staging`, `prod`)
- Bastion implementation
- Private networking patterns
- Monitoring and alerting expansion
- RBAC integration
- Policy initiatives
- Automated Terraform deployment approvals

---

# Skills Demonstrated

This project demonstrates:

- Azure infrastructure deployment
- Terraform modularization
- Azure Policy governance
- Remote state management
- CI/CD validation workflows
- Infrastructure operational thinking
- Risk-aware deployment practices

---

# Author

Mikhael  
Cloud Engineer
