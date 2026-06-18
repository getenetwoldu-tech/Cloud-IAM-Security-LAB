# Phase 1: Just-In-Time (JIT) Privileged Identity Management (PIM)

## Step 1.1: Identity Provisioning & Directory Alignment
To simulate a production deployment mirroring highly regulated enterprise environments, a clean identity baseline was established:
* **User Identity Creation:** Provisioned a cloud-native test engineering account for `Sarah Jenkins` within the Microsoft Entra admin center.
* **Enterprise Metadata Tagging:** Classified the account under the **IT Infrastructure** department with the operational job title **IT Support Engineer**.
* **Licensing Baseline:** Validated the active licensing assignment of a **Microsoft Entra ID P2** tier level to unlock structural Identity Governance and advanced PIM policy features.

<img width="1079" height="1046" alt="Screenshot 2026-06-12 at 8 07 46 PM" src="https://github.com/user-attachments/assets/25666620-1346-4fd0-b8f8-c8c07e955245" />

---

## Step 1.2: Navigating the PIM Role Engine Hierarchy
* **Technical Setup:** Navigated to `Microsoft Entra admin center > Identity Governance > Privileged Identity Management > Microsoft Entra roles > Roles` to access the central control plane for tenant directory administration.

<img width="1079" height="1046" alt="Screenshot 2026-06-12 at 9 03 29 PM" src="https://github.com/user-attachments/assets/de365a22-4caf-4dab-aa2e-301461b128f6" />

---

## Step 1.3: Selecting the Target Directory Role
* **Technical Setup:** Filtered and located the high-privilege **User Administrator** directory role. This role allows managing user accounts, resetting passwords, and configuring profiles, making it a critical target for JIT restriction.

<img width="1079" height="1046" alt="Screenshot 2026-06-12 at 9 06 52 PM" src="https://github.com/user-attachments/assets/160bdd63-5f11-4601-80bf-a04a5429e063" />

---

## Step 1.4: Accessing Role Settings Configurations
* **Technical Setup:** Selected the specific **User Administrator** role properties to reveal the underlying lifecycle, activation triggers, and compliance parameters assigned to this directory tier.

<img width="1079" height="1046" alt="Screenshot 2026-06-12 at 9 08 53 PM" src="https://github.com/user-attachments/assets/6f7cb0bd-7614-4f8c-b3fe-a3c70eb72ef7" />

---

## Step 1.5: Hardening Activation Durations
* **Technical Setup:** Clicked **Edit** within the role configuration settings. Hardened the **Maximum activation duration (hours)** baseline, dropping it down to ensure that if an engineer activates the role, access is automatically severed after a small business window rather than staying active all day.

<img width="1118" height="1046" alt="Screenshot 2026-06-12 at 9 13 07 PM" src="https://github.com/user-attachments/assets/dc28466b-d6a8-46a9-a509-b470306c1e9e" />

---

## Step 1.6: Enforcing MFA and Justification Guardrails
* **Technical Setup:** Configured strict requirements for identity attestation. Toggled **Require Multi-Factor Authentication on activation** to true, and checked **Require justification on activation** to generate an immutable audit trail.

<img width="1800" height="1046" alt="Screenshot 2026-06-12 at 9 21 23 PM" src="https://github.com/user-attachments/assets/87ca776c-ffac-4585-ad99-611990aed272" />

---

## Step 1.7: Configuring Assignment Expiration Rules
* **Technical Setup:** Moved to the **Assignment** settings tab. Disabled "Allow permanent eligible assignment" to eliminate persistent standing privilege windows. Set the maximum eligibility lifespan to a strict **6-month limit**.

<img width="1800" height="1046" alt="Screenshot 2026-06-12 at 9 24 48 PM" src="https://github.com/user-attachments/assets/e69cd508-66ce-462a-a103-5b3afd6684f6" />

---

## Step 1.8: Customizing Role Alert Notification Triggers
* **Technical Setup:** Set up direct admin monitoring policies under the **Notification** tab, ensuring critical email alerts are automatically dispatched to the security operations team whenever a user activates this administrative role.

<img width="1151" height="1046" alt="Screenshot 2026-06-12 at 9 33 00 PM" src="https://github.com/user-attachments/assets/631f46b2-4d30-4944-b634-6c4a8a298b76" />

---

## Step 1.9: Provisioning an Eligible Role Assignment Pipeline
* **Technical Setup:** Clicked **Add assignments** inside the User Administrator role view to hook up the newly configured lifecycle rules to a specific human engineering identity.

<img width="1400" height="1046" alt="Screenshot 2026-06-12 at 9 35 35 PM" src="https://github.com/user-attachments/assets/dd94edc7-c704-4c27-b04e-61beaa715d8e" />
