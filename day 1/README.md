# Azure Infrastructure Operations Lab

## Overview
Cloud infrastructure lab built with Terraform and Microsoft Azure to simulate a real-world junior cloud engineer onboarding environment.

This project intentionally includes controlled operational weaknesses to simulate production-like complexity.

---

## ⚠️ Intentional Design Choices
This environment includes:

- Inconsistent resource naming
- Partially managed infrastructure
- Manual Azure resources
- Terraform-managed resources
- Infrastructure drift scenarios

---

## 🎯 Project Goals
- Practice Azure infrastructure auditing  
- Simulate real-world infrastructure drift  
- Improve Terraform standardization  
- Introduce remote Terraform state management  
- Build safer infrastructure deployment workflows  
- Practice operational decision-making in Azure environments  

---

## 🧰 Technologies Used
- Microsoft Azure  
- Terraform  
- GitHub Actions  

---

## 🌐 Environment Overview
This environment simulates a small Azure workload containing:

- Resource Groups  
- Virtual Networks  
- Subnets  
- Storage Accounts  
- Linux VM deployment  
- Public IP configuration  
- Network Interfaces  

Some resources are intentionally unmanaged or inconsistently configured to simulate real operational environments.

---

## 🏗️ Infrastructure Features

### Terraform Infrastructure
- Virtual network deployment  
- Subnet provisioning  
- VM networking configuration  
- Storage account deployment  
- Reusable variable structure  

### Operational Improvements
- Remote Terraform state using Azure Storage  
- Infrastructure validation workflows  
- Reduced hardcoded configuration  
- Resource tagging standardization  

---

## 🔄 CI Validation
GitHub Actions workflow validates:

```bash
terraform fmt
terraform validate
terraform plan
```

This reduces deployment risk and catches configuration issues early.

---

## 📁 Project Structure

```
.
├── .github/
│   └── workflows/
│       └── terraform.yml
│
├── docs/
│   └── baseline.md
│
├── terraform/
│   ├── backend.tf
│   ├── main.tf
│   ├── providers.tf
│   ├── tags.tf
│   └── variables.tf
│
└── README.md
```

---

## 📚 Key Learnings

### Infrastructure Drift Is Common
Real environments often include:
- Manual changes  
- Unmanaged resources  
- Inconsistent configurations  

---

### Remote State Matters
Local state introduces risk. Azure Storage state improves:

- Collaboration  
- Consistency  
- Deployment reliability  

---

### Small Governance Changes Matter
Even simple standards improve systems significantly:
- Tagging  
- Naming conventions  
- Validation pipelines  

---

## 🚀 Future Improvements
- Azure Policy enforcement  
- Monitoring and alerting automation  
- Expanded Terraform modularization  
- Multi-environment support  
- Private networking patterns  
- RBAC integration  
- Bastion host access  
- Deployment approvals  

---

## 🎯 Purpose
This project demonstrates:

- Foundational cloud engineering skills  
- Terraform infrastructure management  
- Operational troubleshooting mindset  
- Governance awareness  
- Safe infrastructure change practices  

---

## 👤 Author
Mikhael  
Cloud Engineers
