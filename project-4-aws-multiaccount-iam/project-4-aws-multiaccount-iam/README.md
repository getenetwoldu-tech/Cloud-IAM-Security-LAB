# Project 4: AWS Multi-Account IAM & Identity Center (AWS SSO)

## Executive Summary
This project demonstrates enterprise multi-account AWS identity architecture using AWS Organizations, AWS IAM Identity Center (formerly AWS SSO), Service Control Policies (SCPs), and Attribute-Based Access Control (ABAC) for least-privilege administrative enforcement.

---

## Architecture Blueprint
* **Central Management Account:** Hosts AWS Organizations & IAM Identity Center.
* **Workload Member Accounts:** Isolated environments (`Production`, `Staging`, `Sandbox`).
* **Identity Provider:** AWS Identity Center / Azure AD Federation.

---

## Part 1: AWS Organizations Guardrails (Service Control Policies)
*(Configurations and JSON policies coming next)*

## Part 2: IAM Identity Center Permission Sets & ABAC
*(Permission Sets and Group Mappings coming next)*

## Part 3: Cross-Account Role Delegation & Automation
*(Automation scripts coming next)*


## Part 1: AWS Organizations Guardrails (Service Control Policies)

Service Control Policies (SCPs) are applied at the Organizational Unit (OU) level in AWS Organizations to enforce security guardrails across member accounts, overriding even local administrator permissions.

### **Implemented Policy:** [`scp-deny-root-and-region-restriction.json`](./scp-deny-root-and-region-restriction.json)

* **Root Access Deny (`DenyRootAccountUsage`):** Blocks all API operations attempted by the account root user, driving all administrative tasks toward federated IAM Identity Center roles.
* **Geographic Access Guardrail (`RestrictUnauthorizedRegions`):** Explicitly restricts resource creation outside of approved AWS regions (`us-east-1` and `us-west-2`), reducing blast radius and preventing shadow infrastructure deployment.
