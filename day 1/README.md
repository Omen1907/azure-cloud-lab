Azure Infrastructure Operations Lab

Cloud infrastructure lab built with Terraform and Microsoft Azure to simulate a real-world junior cloud engineer onboarding environment.

This project intentionally includes:

inconsistent resource naming
partially managed infrastructure
manual Azure resources
Terraform-managed resources
infrastructure drift scenarios

The objective is to practice identifying and improving operational weaknesses commonly found in growing cloud environments.

Project Goals
Practice Azure infrastructure auditing
Simulate real-world infrastructure drift
Improve Terraform standardization
Introduce remote Terraform state management
Build safer infrastructure deployment workflows
Practice operational decision-making in Azure environments
Technologies Used
Microsoft Azure
Terraform
GitHub Actions
Environment Overview

This environment simulates a small Azure workload containing:

Resource Groups
Virtual Networks
Subnets
Storage Accounts
Linux VM deployment
Public IP configuration
Network Interfaces

Some resources are intentionally unmanaged or inconsistently configured to simulate real operational environments.

Infrastructure Features
Terraform Infrastructure
Virtual network deployment
Subnet provisioning
VM networking configuration
Storage account deployment
Reusable variable structure
Operational Improvements
Remote Terraform state using Azure Storage
Infrastructure validation workflows
Reduced hardcoded configuration
Resource tagging standardization
CI Validation

GitHub workflow currently validates:

terraform fmt
terraform validate
terraform plan

This helps reduce deployment risk and configuration errors before infrastructure changes are applied.

Project Structure
.
├── .github/
│   └── workflows/
│       └── terraform.yml
│
├── docs/
│   └── baseline.md/
│
├── terraform/
│       └── backend.tf
│       └── main.tf
│       └── providers.tf
│       └── tags.tf
│       └── variables.tf
│
└── README.md
Key Learnings
Infrastructure Drift Is Common

Not all infrastructure is fully managed through Terraform. Real environments often contain:

manual changes
unmanaged resources
inconsistent configurations
Remote State Matters

Local Terraform state introduces operational risk in team environments. Moving state to Azure Storage improves:

collaboration
consistency
deployment reliability
Small Governance Improvements Have Big Impact

Even lightweight standardization such as:

tagging
naming conventions
validation pipelines

can significantly improve maintainability and operational clarity.

Future Improvements

Planned next steps:

Azure Policy enforcement
Monitoring and alerting automation
Expanded Terraform modularization
Multi-environment deployment support
Private networking patterns
RBAC integration
Bastion host access
Terraform deployment approvals
Purpose of This Project

This project is intended to demonstrate:

foundational cloud engineering skills
Terraform infrastructure management
operational troubleshooting mindset
governance awareness
safe infrastructure change practices
Author

Mikhael
Cloud Engineer
