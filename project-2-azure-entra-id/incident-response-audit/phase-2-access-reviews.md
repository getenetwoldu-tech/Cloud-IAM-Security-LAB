# Phase 2: Automated Access Reviews & Lifecycle Automation

## Step 2.1: Governance Catalog Isolation
To maintain strict boundary controls, the access review policy was housed inside a dedicated container designed specifically for managing financial system assets.
* **Technical Setup:** Navigated to `Identity Governance > Entitlement management > Catalogs` to verify the active deployment of the custom **Financial-Auditing-Catalog**.

<img width="1083" height="1046" alt="Screenshot 2026-06-12 at 7 25 21 PM" src="https://github.com/user-attachments/assets/f32d23b9-4d7f-4b62-b9a3-3d3ba236a328" />

---

## Step 2.2: Isolating the Target Security Group
Rather than executing sweeping reviews that cause administrator fatigue, compliance tracking was isolated strictly to high-risk auditing personnel.
* **Technical Setup:** Opened the `Select groups` blade to target and bind the specific security group (`sg-finance-auditors`) to the review pipeline.

<img width="1800" height="1046" alt="Screenshot 2026-06-12 at 7 30 07 PM" src="https://github.com/user-attachments/assets/fcb675d0-3c6e-415a-8ef0-d3730139f548" />

---

## Step 2.3: Base Review Template Configuration
The initial governance wizard layout was provisioned to establish the default review timeline and hierarchy.
* **Technical Setup:** Initiated the `New access review` wizard on the **Reviews** tab. Configured a baseline duration of 3 days and set the primary reviewer type to *Group owner(s)*.

<img width="1082" height="1046" alt="Screenshot 2026-06-12 at 7 36 59 PM" src="https://github.com/user-attachments/assets/307fdd5e-7ec0-4126-a00d-4e270ae93d87" />

---

## Step 2.4: Establishing the Recurrence Pattern
To enforce permanent security loops, the timeline parameters were adjusted to align with continuous corporate auditing frameworks.
* **Technical Setup:** Extended the review **Duration** to **7 days** and established a permanent **Monthly** recurrence pattern set to **Never** expire.

<img width="1082" height="1046" alt="Screenshot 2026-06-12 at 7 37 07 PM" src="https://github.com/user-attachments/assets/40529828-9b81-4158-a6a0-30e834790c52" />

---

## Step 2.5: Reviewer Strategy Evaluation
Evaluated Entra ID’s native identity governance capabilities to choose the safest attestation pipeline for financial tracking.
* **Technical Setup:** Opened the reviewer type dropdown to evaluate structural operational configurations, including *Group owner(s)*, *Selected user(s)*, *Users review their own access*, and *Managers of users*.

<img width="1082" height="1046" alt="Screenshot 2026-06-12 at 7 40 36 PM" src="https://github.com/user-attachments/assets/df435bab-0bf0-4dbb-b829-190989c30c3d" />

---

## Step 2.6: Assigning Explicit Oversight
To closely monitor compliance behavior during the initial sandbox validation phase, explicit administrator oversight was assigned.
* **Technical Setup:** Changed the reviewer selector to **Selected user(s) or group(s)** and assigned the administrator identity directly to handle the review processing.

<img width="1082" height="1046" alt="Screenshot 2026-06-12 at 7 43 50 PM" src="https://github.com/user-attachments/assets/89911a32-065e-4a6a-aa02-fcbb0c76b1de" />

---

## Step 2.7: Optimizing Reviewer Decision Support
To eliminate administrative guesswork, automated tracking aids and mandatory verification trails were enabled.
* **Technical Setup:** Activated the **No sign-in within 30 days** decision helper to flag inactive accounts. Enforced an audit trail by enabling **Justification required**, **Email notifications**, and automated **Reminders**.

<img width="1082" height="1046" alt="Screenshot 2026-06-12 at 7 50 46 PM" src="https://github.com/user-attachments/assets/fdec9db8-a913-40ff-9d9a-ebbfae18a4e7" />

---

## Step 2.8: Scope Remediation and Naming Policy Alignment
Corrected administrative visibility settings and branded the policy to align strictly with enterprise naming conventions.
* **Technical Setup:** Expanded the review scope to encompass **Everyone** within the target group and branded the rule engine as the **Monthly-Auditor-Compliance-Review**.

<img width="1754" height="1046" alt="Screenshot 2026-06-12 at 8 01 25 PM" src="https://github.com/user-attachments/assets/d3dba037-b795-4a29-97d1-54acc46e31a9" />
