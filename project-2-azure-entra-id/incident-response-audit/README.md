# Incident Response: Identifying & Remediating Central Policy Gaps

During the staging phase of the access review deployment, a deliberate security architecture audit was conducted on the initial policy draft. This review revealed two critical configuration gaps that would have compromised the system's baseline security posture if deployed to production.

---

##  Vulnerability 1: Overly Permissive Non-Response Default Status
* **Discovery:** During the initial policy drafting phase, the tracking engine's fallback parameter for **If reviewers don't respond** defaulted to **No change**.
* **Operational Risk:** This default state introduces a severe security vulnerability. If an administrator or resource owner fails to complete their monthly compliance review due to administrative negligence or an absence, the policy fails *open*. Stale accounts or compromised external auditor identities would retain continuous, unverified access indefinitely, resulting in severe privilege creep.
* **Technical Remediation:** Navigated back to the core policy rule engine settings tab to override the default behavior. The configuration was hardened from *No change* to **Remove access**. By committing this modification, Microsoft Entra ID enforces a strict *fail-secure* posture: if a 7-day review window expires without explicit human validation, the engine automatically triggers an API call to strip permissions and revoke group membership by default.

---

## 🔍 Vulnerability 2: Restricted Scope Profiling (Guest-Only Exclusion)
* **Discovery:** A design gap was identified on the preliminary summary review blade. The original policy scope field was restricted to target **Guest users** exclusively.
* **Operational Risk:** While focusing on guest identities mitigates third-party risk, it completely ignores the internal threat landscape. Internal employees who change departments or complete their auditing assignments would remain in the security group indefinitely without oversight, leading to horizontal privilege accumulation.
* **Technical Remediation:** Re-opened the workflow definition wizard and expanded the evaluation criteria scope setting from *Guest users* to **Everyone**. This adjustment ensures the automated monthly engine sweeps and evaluates every single identity bound to the resource, guaranteeing universal compliance tracking across both internal corporate accounts and external guest profiles.

---

### Key Technical Takeaways
* **Standing Access Eliminated:** Implemented structural JIT PIM bounds, shrinking credential exposure risk down to an on-demand, time-constrained model.
* **Automated Privilege Creep Remediation:** Engineered a recurring monthly compliance review framework that actively eliminates orphan or legacy system permissions without creating manual administrator overhead.
* **Fail-Secure System Engineering:** Configured fallback states to choose data revocation (*Remove access*) over data permanence (*No change*), proving the practical application of core Zero-Trust concepts within enterprise cloud environments.
