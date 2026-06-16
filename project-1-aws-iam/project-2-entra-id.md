# Project 2: Microsoft Entra ID – Advanced Identity Governance & Zero-Trust Architecture

##  Project Overview
This project demonstrates the end-to-end implementation of an enterprise-grade identity governance framework within a Microsoft 365 Developer Sandbox environment. The architecture is engineered to eliminate risk-heavy permanent administrative privileges and mitigate privilege creep across cloud infrastructure using two core operational phases:

1. **Phase 1 (Module 1): Just-In-Time (JIT) Privileged Identity Management (PIM)** – Enforcing the principle of Least Privilege by replacing standing administrative rights with time-bound, approval-based role eligibility.
2. **Phase 2 (Module 4): Automated Access Reviews & Fail-Secure Automation** – Implementing recurring compliance loops that automatically audit and forcefully strip group memberships from stale or non-responsive identities.

---

##  Phase 1: Just-In-Time (JIT) Privileged Identity Management (PIM)

### Step 1.1: Identity Provisioning & Directory Alignment
To simulate a production deployment mirroring highly regulated enterprise environments, a clean identity baseline was established:
* **User Identity Creation:** Provisioned a cloud-native test engineering account for `Sarah Jenkins` within the Microsoft Entra admin center.
* **Enterprise Metadata Tagging:** Classified the account under the **IT Infrastructure** department with the operational job title **IT Support Engineer**.
* **Licensing Baseline:** Validated the active licensing assignment of a **Microsoft Entra ID P2** tier level to unlock structural Identity Governance and advanced PIM policy features.

![1_user_provisioning](images/image_6201c9.png)

### Step 1.2: Navigating the PIM Role Engine Hierarchy
* **Technical Setup:** Navigated to `Microsoft Entra admin center > Identity Governance > Privileged Identity Management > Microsoft Entra roles > Roles` to access the central control plane for tenant directory administration.

![2_pim_roles_navigation](images/Screenshot_2026-06-12_at_8.07.46_PM.jpg)

### Step 1.3: Selecting the Target Directory Role
* **Technical Setup:** Filtered and located the high-privilege **User Administrator** directory role. This role allows managing user accounts, resetting passwords, and configuring profiles, making it a critical target for JIT restriction.

![3_target_role_selection](images/Screenshot_2026-06-12_at_9.03.29_PM.jpg)

### Step 1.4: Accessing Role Settings Configurations
* **Technical Setup:** Selected the specific **User Administrator** role properties to reveal the underlying lifecycle, activation triggers, and compliance parameters assigned to this directory tier.

![4_role_settings](images/Screenshot_2026-06-12_at_9.06.52_PM.jpg)

### Step 1.5: Hardening Activation Durations
* **Technical Setup:** Clicked **Edit** within the role configuration settings. Hardened the **Maximum activation duration (hours)** baseline, dropping it down to ensure that if an engineer activates the role, access is automatically severed after a small business window rather than staying active all day.

![5_activation_durations](images/Screenshot_2026-06-12_at_9.08.53_PM.jpg)

### Step 1.6: Enforcing MFA and Justification Guardrails
* **Technical Setup:** Configured strict requirements for identity attestation. Toggled **Require Multi-Factor Authentication on activation** to true, and checked **Require justification on activation** to generate an immutable audit trail.

![6_mfa_justification_guardrails](images/Screenshot_2026-06-12_at_9.13.07_PM.jpg)

### Step 1.7: Configuring Assignment Expiration Rules
* **Technical Setup:** Moved to the **Assignment** settings tab. Disabled "Allow permanent eligible assignment" to eliminate persistent standing privilege windows. Set the maximum eligibility lifespan to a strict **6-month limit**.

![7_assignment_expiration](images/Screenshot_2026-06-12_at_9.21.23_PM.jpg)

### Step 1.8: Customizing Role Alert Notification Triggers
* **Technical Setup:** Set up direct admin monitoring policies under the **Notification** tab, ensuring critical email alerts are automatically dispatched to the security operations team whenever a user activates this administrative role.

![8_notification_triggers](images/Screenshot_2026-06-12_at_9.24.48_PM.jpg)

### Step 1.9: Provisioning an Eligible Role Assignment Pipeline
* **Technical Setup:** Clicked **Add assignments** inside the User Administrator role view to hook up the newly configured lifecycle rules to a specific human engineering identity.

![9_add_assignment_wizard](images/Screenshot_2026-06-12_at_9.33.00_PM.jpg)

### Step 1.10: Binding the Target Support Identity
* **Technical Setup:** Bound the test account `Sarah Jenkins` explicitly as an **Eligible** user. This locks down her identity to a strict JIT status, meaning her standing privileges are completely removed, and she must manually request time-bound access through the PIM portal when performing system administration tasks.

![10_user_assignment_complete](images/Screenshot_2026-06-12_at_9.35.35_PM.jpg)

---

##  Phase 2: Automated Access Reviews & Lifecycle Automation

### Step 2.1: Governance Catalog Isolation
To maintain strict boundary controls, the access review policy was housed inside a dedicated container designed specifically for managing financial system assets.
* **Technical Setup:** Navigated to `Identity Governance > Entitlement management > Catalogs` to verify the active deployment of the custom **Financial-Auditing-Catalog**.

![11_catalog_isolation](images/Screenshot_2026-06-13_at_10.31.56_PM.jpg)

### Step 2.2: Isolating the Target Security Group
Rather than executing sweeping reviews that cause administrator fatigue, compliance tracking was isolated strictly to high-risk auditing personnel.
* **Technical Setup:** Opened the `Select groups` blade to search for, target, and bind the specific target security group (`sg-finance-auditors`) to the review pipeline.

![12_group_selection](images/Screenshot_2026-06-13_at_10.39.35_PM.jpg)

### Step 2.3: Base Review Template Configuration
The initial governance wizard layout was provisioned to establish the default review timeline and hierarchy.
* **Technical Setup:** Initiated the `New access review` wizard on the **Reviews** tab. Configured a baseline duration of 3 days and set the primary reviewer type to *Group owner(s)*.

![13_base_template](images/Screenshot_2026-06-13_at_10.51.23_PM.jpg)

### Step 2.4: Establishing the Recurrence Pattern
To enforce permanent security loops, the timeline parameters were adjusted to align with continuous corporate auditing frameworks.
* **Technical Setup:** Extended the review **Duration** to **7 days** and established a permanent **Monthly** recurrence pattern set to **Never** expire.

![14_recurrence_pattern](images/Screenshot_2026-06-13_at_10.53.42_PM.jpg)

### Step 2.5: Reviewer Strategy Evaluation
Evaluated Entra ID’s native identity governance capabilities to choose the safest attestation pipeline for financial tracking.
* **Technical Setup:** Opened the reviewer type dropdown to evaluate the structural differences between *Group owner(s)*, *Selected user(s) or group(s)*, *Users review their own access*, and *Managers of users*.

![15_reviewer_options](images/Screenshot_2026-06-13_at_10.54.59_PM.jpg)

### Step 2.6: Assigning Explicit Oversight
To closely monitor compliance behavior during the initial sandbox validation phase, explicit administrator oversight was assigned.
* **Technical Setup:** Changed the reviewer selector to **Selected user(s) or group(s)** and assigned the administrator identity directly to handle the review processing.

![16_explicit_reviewer](images/Screenshot_2026-06-13_at_10.56.11_PM.jpg)

### Step 2.7: Optimizing Reviewer Decision Support
To eliminate administrative guesswork, automated tracking aids and mandatory verification trails were enabled.
* **Technical Setup:** Activated the **No sign-in within 30 days** decision helper to flag inactive accounts. Enforced a zero-trust audit trail by enabling **Justification required**, **Email notifications**, and automated **Reminders**.

![17_decision_helpers](images/Screenshot_2026-06-13_at_10.57.59_PM.jpg)

### Step 2.8: Identifying Policy Gaps & Weak Postures
A critical security architecture review of the baseline policy summary page revealed two significant security flaws that required immediate engineering remediation.
* **Analysis:** Audited the draft panel and discovered that the **Review scope** was accidentally limited to *Guest users* only (bypassing internal lateral threat actors), and the non-response behavior was left on a weak fallback of *No change*.

![18_gap_analysis](images/Screenshot%202026-06-13%20at%2011.00.01%20PM.jpg)

### Step 2.9: Remediating Scope Definitions and Policy Metadata
Corrected the internal visibility oversight and branded the policy to align with enterprise naming conventions.
* **Technical Setup:** Expanded the review scope to encompass **Everyone** within the target group. Branded the rule as the **Monthly-Auditor-Compliance-Review** and appended an engineering description.

![19_scope_remediation](images/Screenshot%202026-06-13%20at%2011.07.25%20PM.jpg)

### Step 2.10: Mid-State Validation Review
Audited the modified dashboard configuration layout to ensure all properties updated successfully before modifying backend automation settings.
* **Technical Setup:** Evaluated the central tracking panel to ensure the directory engine successfully committed the **Everyone** group scope variable modifier.

![20_mid_state_review](images/Screenshot%202026-06-13%20at%2011.07.31%20PM.jpg)

### Step 2.11: Modifying Non-Response Behavior Rules
To safeguard the system from administrative negligence or missed deadlines, the default non-action pipeline was modified.
* **Technical Setup:** Returned to the core **Settings** tab and expanded the configuration choices for the parameter labeled **If reviewers don't respond**.

![21_dropdown_expansion](images/Screenshot%202026-06-13%20at%2011.10.00%20PM.jpg)

### Step 2.12: Enforcing Automated Fail-Secure Revocation
Switched the fallback automation rule to ensure the system defaults to maximum restriction if human reviewers fail to complete their validation task.
* **Technical Setup:** Selected and committed the **Remove access** behavior status. Entra ID generated a warning banner highlighting the zero-trust impact: *unreviewed accounts will lose access automatically upon the 7-day expiration window*.

![22_fail_secure_lock](images/Screenshot%202026-06-13%20at%2011.10.37%20PM.jpg)

### Step 2.13: Final Architecture Validation (Top Summary)
Conducted a final verification audit of the upper management plane configuration properties before initializing policy creation.
* **Technical Setup:** Validated that the naming policy, targeted financial catalog assets, group scopes, and universal identity coverage lines mapped correctly.

![23_top_level_audit](images/Screenshot%202026-06-13%20at%2011.10.48%20PM.jpg)

### Step 2.14: Final Execution (Bottom Summary)
Audited the lower settings plane to confirm the operational lifecycle rules were perfectly configured.
* **Technical Setup:** Double-checked that **If reviewers don't respond -> Remove access** and **Auto-apply results -> Enabled** were active. Clicked the blue **Create** button to provision the live, production-ready rule engine.

![24_final_deployment](images/Screenshot%202026-06-13%20at%2011.10.54%20PM.jpg)

---

##  Incident Response: Identifying & Remediating Central Policy Gaps

During the staging phase of the access review deployment, a deliberate security architecture audit was conducted on the initial policy draft. This review revealed two critical configuration gaps that would have compromised the system's baseline security posture if deployed to production.

###  Vulnerability 1: Overly Permissive Non-Response Default Status
* **Discovery:** During the initial policy drafting phase, the tracking engine's fallback parameter for **If reviewers don't respond** defaulted to **No change**.
* **Operational Risk:** This default state introduces a severe security vulnerability. If an administrator or resource owner fails to complete their monthly compliance review due to administrative negligence or an absence, the policy fails *open*. Stale accounts or compromised external auditor identities would retain continuous, unverified access indefinitely, resulting in severe privilege creep.
* **Technical Remediation:** Navigated back to the core policy rule engine settings tab to override the default behavior. The configuration was hardened from *No change* to **Remove access**. By committing this modification, Microsoft Entra ID enforces a strict *fail-secure* posture: if a 7-day review window expires without explicit human validation, the engine automatically triggers an API call to strip permissions and revoke group membership by default.

###  Vulnerability 2: Restricted Scope Profiling (Guest-Only Exclusion)
* **Discovery:** A design gap was identified on the preliminary summary review blade. The original policy scope field was restricted to target **Guest users** exclusively.
* **Operational Risk:** While focusing on guest identities mitigates third-party risk, it completely ignores the internal threat landscape. Internal employees who change departments or complete their auditing assignments would remain in the security group indefinitely without oversight, leading to horizontal privilege accumulation.
* **Technical Remediation:** Re-opened the workflow definition wizard and expanded the evaluation criteria scope setting from *Guest users* to **Everyone**. This adjustment ensures the automated monthly engine sweeps and evaluates every single identity bound to the resource, guaranteeing universal compliance tracking across both internal corporate accounts and external guest profiles.

---

### Key Technical Takeaways
* **Standing Access Eliminated:** Implemented structural JIT PIM bounds, shrinking credential exposure risk down to an on-demand, time-constrained model.
* **Automated Privilege Creep Remediation:** Engineered a recurring monthly compliance review framework that actively eliminates orphan or legacy system permissions without creating manual administrator overhead.
* **Fail-Secure System Engineering:** Configured fallback states to choose data revocation (*Remove access*) over data permanence (*No change*), proving the practical application of core Zero-Trust concepts within enterprise cloud environments.
