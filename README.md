# Multi-Cloud IAM Security & Identity Governance Portfolio Lab

## Project Overview
This repository contains production-ready implementation logs, least-privilege policy definitions, and zero-trust architecture frameworks deployed across multi-cloud environments. The labs demonstrate advanced capabilities in automated identity lifecycle management, privileged access isolation, and configuration audit workflows.

---

## Core Architecture Showcase

### [Project 1: AWS IAM Security & Multi-Tenant Isolation](./project-1-aws-iam/project-1-aws-iam.md)
* **Focus Area:** Granular Policy Engineering, Custom Managed Policies, and RBAC implementation.
* **Key Deliverables:** Elimination of wildcard permissions, enforcement of context-aware multi-factor authentication (MFA) parameters, and cross-account trust boundary restrictions.

###  [Project 2: Microsoft Entra ID Enterprise Governance](./project-2-azure-entra-id/phase-1-jit-pim.md)
This project is engineered to enforce zero-trust identity baselines within an enterprise environment and is divided into three distinct operational domains:
1. **[Phase 1: Just-In-Time (JIT) Privileged Identity Management](./project-2-azure-entra-id/phase-1-jit-pim.md)**
   * Eliminating persistent standing administrative rights by implementing approval-based, time-bound directory role assignments for critical roles like User Administrator.
2. **[Phase 2: Automated Access Reviews & Fail-Secure Automation](./project-2-azure-entra-id/phase-2-access-reviews.md)**
   * Structuring recurring compliance auditing loops targeting high-risk resource groups with automated, fail-secure access teardowns.
3. **[Incident Response: Posture Audit & Remediation Logs](./project-2-azure-entra-id/incident-response.md)**
   * Architectural gap analysis tracking security remediation efforts against overly permissive non-response defaults and scope gaps.

---

## Technical Skillset Demonstrated
* **Directory Operations:** Microsoft Entra ID (Azure AD) P2 Engine, AWS IAM Policy Engine.
* **Identity Governance:** Just-In-Time (JIT) Elevation, Privileged Identity Management (PIM), Lifecycle Access Reviews, Attestation Workflows.
* **Security Controls:** Conditional Access Policies, Time-Bound Role Hardening, Multi-Factor Authentication (MFA) Guardrails, Fail-Secure Configuration Architecture.
