This project simulates a real-world Azure environment with inconsistent infrastructure patterns, partial automation, and manual resources.

## Goals
- Practice Azure infrastructure auditing
- Introduce Terraform state management
- Simulate real production drift scenarios
- Build CI validation for infrastructure changes

## Stack
- Azure
- Terraform
- GitHub Actions

## What’s included
- Virtual network setup
- Storage accounts
- VM deployment
- CI pipeline for Terraform validation
- Remote state backend (Azure Storage)

## Key Learnings
- Infrastructure drift is real
- Partial automation creates hidden risk
- State management is critical for team environments
- CI validation prevents broken infrastructure changes

## Future improvements
- Add Azure Policy enforcement
- Expand modular Terraform design
- Introduce monitoring + alerting automation
