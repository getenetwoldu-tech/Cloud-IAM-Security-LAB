# Incident Response & Governance Audit (Modules 3 & 4 Combined)

During the staging phase of the access review deployment, a proactive security architecture audit was conducted on the environment baseline. This incident response simulation led to the discovery of two critical misconfigurations that would have compromised the system's Zero-Trust posture if deployed to production.

---

## 🔍 Incident Discovery 1: Overly Permissive Non-Response Status (Module 3)
* **Vulnerability Identified:** During the blueprint analysis of the access review rule engine, the fallback parameter for **If reviewers don't respond** was flagged as defaulting to **No change**.
* **Risk Assessment:** This configuration introduces a significant data governance risk. If an administrator or business resource owner fails to complete their monthly compliance review due to organizational absence or negligence, the policy fails *open*. Orphaned internal accounts or external contractor identities retain standing administrative privileges indefinitely, leading to horizontal privilege creep.

### 🛡️ Engineering Remediation (Module 4)
* **Technical Fix:** Navigated back to the core policy properties configuration panel to enforce a hardened fallback rule. The parameter was changed from *No change* to **Remove access** to ensure a fail-secure posture.

<img width="1207" height="1046" alt="Screenshot 2026-06-13 at 11 00 01 PM" src="https://github.com/user-attachments/assets/09c15441-82ca-4aba-b857-4435a1719ece" />

---

## 🔍 Incident Discovery 2: Restricted Scope Profiling (Module 3)
* **Vulnerability Identified:** An audit of the target audience parameters revealed that the preliminary review scope was accidentally limited to target **Guest users** exclusively.
* **Risk Assessment:** While tracking external guest accounts reduces third-party exposure, restricting the scope entirely ignores internal lateral threat vectors. Employees changing roles, moving departments, or exiting projects would remain in high-privilege groups without oversight.

### 🛡️ Engineering Remediation (Module 4)
* **Technical Fix:** Modified the directory object engine filters to expand the evaluation criteria scope setting from *Guest users* to **Everyone**.
* **Zero-Trust Posture:** The governance framework now forces universal identity checking. The automated monthly engine sweeps every single cloud identity bound to the resource group, ensuring identical compliance metrics apply to both internal employees and external users.

<img width="1207" height="1046" alt="Screenshot 2026-06-13 at 11 07 25 PM" src="https://github.com/user-attachments/assets/93e59751-f463-46db-bf61-15d64890837f" />

---

### 🧠 Strategic Security Takeaways
* **Standing Access Eliminated:** Reduced standing administrator risk to an on-demand, time-constrained model using Just-In-Time boundaries.
* **Automated Privilege Creep Mitigation:** Built an automated lifecycle tracking loop that cleans up orphan permissions without manual administrative work.
* **Fail-Secure Defaults:** Proved that true cloud safety means choosing automated access revocation over data permanence whenever human workflows stall.
