# Phase 2: Automated Access Reviews & Lifecycle Automation

## Step 2.1: Governance Catalog Isolation
To maintain strict boundary controls, the access review policy was housed inside a dedicated container designed specifically for managing financial system assets.
* **Technical Setup:** Navigated to `Identity Governance > Entitlement management > Catalogs` to verify the active deployment of the custom **Financial-Auditing-Catalog**.

<img width="1800" height="1046" alt="Screenshot 2026-06-13 at 10 31 56 PM" src="https://github.com/user-attachments/assets/79b35d9a-d41f-4268-8781-de62b5e91a84" />

---

## Step 2.2: Isolating the Target Security Group
Rather than executing sweeping reviews that cause administrator fatigue, compliance tracking was isolated strictly to high-risk auditing personnel.
* **Technical Setup:** Opened the `Select groups` blade to target and bind the specific security group (`sg-finance-auditors`) to the review pipeline.

<img width="1207" height="1046" alt="Screenshot 2026-06-13 at 10 39 35 PM" src="https://github.com/user-attachments/assets/72e05b99-0836-4fec-a3fa-ff028cae87d2" />

---

## Step 2.3: Base Review Template Configuration
The initial governance wizard layout was provisioned to establish the default review timeline and hierarchy.
* **Technical Setup:** Initiated the `New access review` wizard on the **Reviews** tab. Configured a baseline duration of 3 days and set the primary reviewer type to *Group owner(s)*.

<img width="1207" height="1046" alt="Screenshot 2026-06-13 at 10 51 23 PM" src="https://github.com/user-attachments/assets/71daf200-3e13-45ed-836b-a6ac12682a65" />

---

## Step 2.4: Establishing the Recurrence Pattern
To enforce permanent security loops, the timeline parameters were adjusted to align with continuous corporate auditing frameworks.
* **Technical Setup:** Extended the review **Duration** to **7 days** and established a permanent **Monthly** recurrence pattern set to **Never** expire.

<img width="1207" height="1046" alt="Screenshot 2026-06-13 at 10 53 42 PM" src="https://github.com/user-attachments/assets/0c1bd42a-781d-4d6c-940d-e089db67c526" />

---

## Step 2.5: Reviewer Strategy Evaluation
Evaluated Entra ID’s native identity governance capabilities to choose the safest attestation pipeline for financial tracking.
* **Technical Setup:** Opened the reviewer type dropdown to evaluate structural operational configurations, including *Group owner(s)*, *Selected user(s)*, *Users review their own access*, and *Managers of users*.

<img width="1207" height="1046" alt="Screenshot 2026-06-13 at 10 54 59 PM" src="https://github.com/user-attachments/assets/61f19d11-cf2b-4007-a61e-1d4e201a5774" />

---

## Step 2.6: Assigning Explicit Oversight
To closely monitor compliance behavior during the initial sandbox validation phase, explicit administrator oversight was assigned.
* **Technical Setup:** Changed the reviewer selector to **Selected user(s) or group(s)** and assigned the administrator identity directly to handle the review processing.

<img width="1207" height="1046" alt="Screenshot 2026-06-13 at 10 56 11 PM" src="https://github.com/user-attachments/assets/e5f12209-1e85-4be7-ae75-c115d5109a70" />

---

## Step 2.7: Optimizing Reviewer Decision Support
To eliminate administrative guesswork, automated tracking aids and mandatory verification trails were enabled.
* **Technical Setup:** Activated the **No sign-in within 30 days** decision helper to flag inactive accounts. Enforced an audit trail by enabling **Justification required**, **Email notifications**, and automated **Reminders**.

<img width="1207" height="1046" alt="Screenshot 2026-06-13 at 10 57 59 PM" src="https://github.com/user-attachments/assets/cbf92746-150d-48a2-bd7a-2462509146ea" />

---

## Step 2.8: Final Architecture Validation & Deployment
Conducted a comprehensive validation audit of both the upper and lower management planes before initializing policy creation.
* **Technical Setup:** Verified that the naming policies, target catalogs, group scopes, and fail-secure behaviors mapped correctly.

<img width="1754" height="1046" alt="Screenshot 2026-06-12 at 8 01 25 PM" src="https://github.com/user-attachments/assets/31436879-1c2f-46c4-8e8c-b0f673aab7ed" />
