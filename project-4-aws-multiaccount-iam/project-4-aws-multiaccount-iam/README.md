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

Service Control Policies (SCPs) are applied at the Organizational Unit (OU) level in AWS Organizations to enforce security guardrails across member accounts, overriding even local administrator permissions.

### **Implemented Policy:** [`scp-deny-root-and-region-restriction.json`](./scp-deny-root-and-region-restriction.json)

* **Root Access Deny (`DenyRootAccountUsage`):** Blocks all API operations attempted by the account root user, driving all administrative tasks toward federated IAM Identity Center roles.
* **Geographic Access Guardrail (`RestrictUnauthorizedRegions`):** Explicitly restricts resource creation outside of approved AWS regions (`us-east-1` and `us-west-2`), reducing blast radius and preventing shadow infrastructure deployment.

---

## Part 2: IAM Identity Center Permission Sets & ABAC

Attribute-Based Access Control (ABAC) uses dynamic user and resource tags to grant access permissions dynamically without requiring individual policy updates for every user or project group.

### **Implemented Policy:** [`abac-department-access-policy.json`](./abac-department-access-policy.json)

* **Global Read Access (`AllowReadAccessAllResources`):** Allows visibility across EC2 and S3 resources.
* **Tag Matching Rule (`EnforceABACDepartmentTagMatching`):** Dynamically grants start/stop/read/write permissions **only** if the user's `CostCenter` session tag matches the target resource's `CostCenter` tag (`${aws:PrincipalTag/CostCenter} == ${aws:ResourceTag/CostCenter}`).

## Part 3: Cross-Account Role Delegation & Automation
*(Automation scripts coming next)*
