# Phase 1: Just-In-Time (JIT) Privileged Identity Management (PIM)

## Step 1.1: Identity Provisioning & Directory Alignment
To simulate a production deployment mirroring highly regulated enterprise environments, a clean identity baseline was established:
* **User Identity Creation:** Provisioned a cloud-native test engineering account for `Sarah Jenkins` within the Microsoft Entra admin center.
* **Enterprise Metadata Tagging:** Classified the account under the **IT Infrastructure** department with the operational job title **IT Support Engineer**.
* **Licensing Baseline:** Validated the active licensing assignment of a **Microsoft Entra ID P2** tier level to unlock structural Identity Governance and advanced PIM policy features.

<img width="1230" height="1046" alt="Screenshot 2026-06-10 at 10 18 03 PM" src="https://github.com/user-attachments/assets/77ac8730-4c14-4743-aa6c-e9ceea635c40" />

---

## Step 1.2: Navigating the PIM Role Engine Hierarchy
* **Technical Setup:** Navigated to `Microsoft Entra admin center > Identity Governance > Privileged Identity Management > Microsoft Entra roles > Roles` to access the central control plane for tenant directory administration.

<img width="1249" height="1046" alt="Screenshot 2026-06-10 at 10 21 52 PM" src="https://github.com/user-attachments/assets/80d1be0c-d46a-42d4-93d3-1c4fb4343f52" />

---

## Step 1.3: Selecting the Target Directory Role
* **Technical Setup:** Filtered and located the high-privilege **User Administrator** directory role. This role allows managing user accounts, resetting passwords, and configuring profiles, making it a critical target for JIT restriction.

<img width="1678" height="1046" alt="Screenshot 2026-06-10 at 10 23 12 PM" src="https://github.com/user-attachments/assets/b993b2e8-3c11-4dba-943d-5eadd9452357" />

---

## Step 1.4: Accessing Role Settings Configurations
* **Technical Setup:** Selected the specific **User Administrator** role properties to reveal the underlying lifecycle, activation triggers, and compliance parameters assigned to this directory tier.

<img width="1678" height="1046" alt="Screenshot 2026-06-10 at 10 23 27 PM" src="https://github.com/user-attachments/assets/57b674d2-e492-4288-8e7e-a93e72460403" />

---

## Step 1.5: Hardening Activation Durations
* **Technical Setup:** Clicked **Edit** within the role configuration settings. Hardened the **Maximum activation duration (hours)** baseline, dropping it down to ensure that if an engineer activates the role, access is automatically severed after a small business window rather than staying active all day.

<img width="1297" height="1046" alt="Screenshot 2026-06-10 at 10 31 30 PM" src="https://github.com/user-attachments/assets/a9dc1d9a-9f4c-4677-b8c0-b187d1adc64f" />

---

## Step 1.6: Enforcing MFA and Justification Guardrails
* **Technical Setup:** Configured strict requirements for identity attestation. Toggled **Require Multi-Factor Authentication on activation** to true, and checked **Require justification on activation** to generate an immutable audit trail.

<img width="1297" height="1046" alt="Screenshot 2026-06-10 at 10 35 30 PM" src="https://github.com/user-attachments/assets/1fc348a7-e5c0-4a5b-b41b-98b6c86b9ad8" />

---

## Step 1.7: Configuring Assignment Expiration Rules
* **Technical Setup:** Moved to the **Assignment** settings tab. Disabled "Allow permanent eligible assignment" to eliminate persistent standing privilege windows. Set the maximum eligibility lifespan to a strict **6-month limit**.

<img width="1800" height="1046" alt="Screenshot 2026-06-11 at 8 59 57 PM" src="https://github.com/user-attachments/assets/25c0d650-6ab9-43ae-80d4-eca332d5e946" />

---

## Step 1.8: Customizing Role Alert Notification Triggers
* **Technical Setup:** Set up direct admin monitoring policies under the **Notification** tab, ensuring critical email alerts are automatically dispatched to the security operations team whenever a user activates this administrative role.

<img width="1049" height="1046" alt="Screenshot 2026-06-11 at 9 17 12 PM" src="https://github.com/user-attachments/assets/0daac8ba-b4b4-43d8-8bfb-2c95a5cd8ae1" />

---

## Step 1.9: Provisioning an Eligible Role Assignment Pipeline
* **Technical Setup:** Clicked **Add assignments** inside the User Administrator role view to hook up the newly configured lifecycle rules to a specific human engineering identity.

<img width="1049" height="1046" alt="Screenshot 2026-06-12 at 6 05 47 AM" src="https://github.com/user-attachments/assets/d390ce04-7f3a-431f-afa7-bac0b1f38002" />

---

## Step 1.10: Binding the Target Support Identity
* **Technical Setup:** Bound the test account `Sarah Jenkins` explicitly as an **Eligible** user. This locks down her identity to a strict JIT status, meaning her standing privileges are completely removed, and she must manually request time-bound access through the PIM portal when performing system administration tasks.

<img width="1126" height="1046" alt="Screenshot 2026-06-12 at 6 12 29 AM" src="https://github.com/user-attachments/assets/282175a5-d2ed-41d8-80a9-a3ad79493818" />

---

## Step 1.11: Final Posture Verification Audit
* **Technical Setup:** Audited the final active registration state panel to verify that the target account identity maps securely under the managed administrative tracking rules.

<img width="1555" height="1046" alt="Screenshot 2026-06-12 at 6 14 58 AM" src="https://github.com/user-attachments/assets/9a4b24b0-4855-47c1-ad6c-b7f683f47d37" />
