# Project 3: Enterprise IGA Implementation (SailPoint IdentityIQ & Microsoft Entra ID)

## Overview
This project demonstrates an enterprise-grade Identity Governance and Administration (IGA) solution covering automated **Joiner, Mover, and Leaver (JML)** lifecycles across both on-premises enterprise systems (using SailPoint IdentityIQ) and cloud environments (using Microsoft Entra ID Governance).

---

## Part 1: SailPoint IdentityIQ Configurations (XML)

* **`Application-Epic-EHR.xml`**: Application onboarding definition for Epic Systems EHR integration.
* **`Rule-Correlation-Beanshell.xml`**: BeanShell correlation rule mapping identity attributes during aggregation.
* **`Workflow-Leaver-Deprovisioning.xml`**: Automated deprovisioning workflow executing access revokes upon employee termination.

---

## Part 2: Microsoft Entra ID Governance & Lifecycle Workflows

### 1. Lifecycle Workflows Dashboard
Navigated to the Microsoft Entra ID Governance overview dashboard to manage automated JML workflows.

![Lifecycle Workflows Overview](../Screenshot%20_png.png)

---

### 2. Workflow Template Selection (Joiners)
Selected the built-in **Onboard pre-hire employee** template to automate onboarding tasks before day one.

![Template Selection - Joiners](../Screenshot%20_1.png)

---

### 3. Workflow Template Selection (Movers & Leavers)
Reviewed available out-of-the-box templates for role changes, real-time terminations, and inactive account offboarding.

![Template Selection - Movers and Leavers](../Screenshot%20_2.png)

---

### 4. Basic Details & Trigger Definition
Configured a time-based trigger targeting the `employeeHireDate` attribute to fire **7 days prior** to the start date.

![Trigger Configuration](../Screenshot%20_3.png)

* **Trigger Type:** Time-based attribute
* **Target Attribute:** `employeeHireDate`
* **Timing Offset:** 7 Days Before

---

### 5. Task Selection & Enablement
Assigned and verified automated workflow tasks for the pre-hire phase.

![Task Selection](../Screenshot%20_4.png)

* **Automated Action:** Generate Temporary Access Pass (TAP) and Send Email
* **Status:** Enabled

---

### 6. Scope Rules & Workflow Review
Established scoping rules to target specific departments and reviewed the complete configuration before deployment.

![Workflow Review Summary](../Screenshot%20_5.png)

* **Scope Rule:** `(department eq 'Marketing')`
* **Category:** Joiner

---

### 7. Workflow Deployment Verification (Overview View)
Confirmed successful deployment of the **Onboard pre-hire employee** workflow within the Entra ID portal.

![Active Workflow Overview](../Screenshot%20_6.png)

---

### 8. Workflow Deployment Verification (Detailed View)
Verified schedule status, active versioning, assigned administrative scopes, and execution parameters.

![Active Workflow Details](../Screenshot%20_7.png)

* **Enabled:** Yes
* **Current Version:** 1
* **Schedule Active:** Yes
