# Phase 1: Just-In-Time (JIT) Privileged Identity Management (PIM)

## Step 1.1: Identity Provisioning & Directory Alignment
To simulate a production deployment mirroring highly regulated enterprise environments, a clean identity baseline was established:
* **User Identity Creation:** Provisioned a cloud-native test engineering account for `Sarah Jenkins` within the Microsoft Entra admin center.
* **Enterprise Metadata Tagging:** Classified the account under the **IT Infrastructure** department with the operational job title **IT Support Engineer**.
* **Licensing Baseline:** Validated the active licensing assignment of a **Microsoft Entra ID P2** tier level to unlock structural Identity Governance and advanced PIM policy features.

![1_user_provisioning](../../images/image_6201c9.png)

## Step 1.2: Navigating the PIM Role Engine Hierarchy
* **Technical Setup:** Navigated to `Microsoft Entra admin center > Identity Governance > Privileged Identity Management > Microsoft Entra roles > Roles` to access the central control plane for tenant directory administration.

![2_pim_roles_navigation](../../images/Screenshot_2026-06-12_at_8.07.46_PM.jpg)

## Step 1.3: Selecting the Target Directory Role
* **Technical Setup:** Filtered and located the high-privilege **User Administrator** directory role. This role allows managing user accounts, resetting passwords, and configuring profiles, making it a critical target for JIT restriction.

![3_target_role_selection](../../images/Screenshot_2026-06-12_at_9.03.29_PM.jpg)

## Step 1.4: Accessing Role Settings Configurations
* **Technical Setup:** Selected the specific **User Administrator** role properties to reveal the underlying lifecycle, activation triggers, and compliance parameters assigned to this directory tier.

![4_role_settings](../../images/Screenshot_2026-06-12_at_9.06.52_PM.jpg)

## Step 1.5: Hardening Activation Durations
* **Technical Setup:** Clicked **Edit** within the role configuration settings. Hardened the **Maximum activation duration (hours)** baseline, dropping it down to ensure that if an engineer activates the role, access is automatically severed after a small business window rather than staying active all day.

![5_activation_durations](../../images/Screenshot_2026-06-12_at_9.08.53_PM.jpg)

## Step 1.6: Enforcing MFA and Justification Guardrails
* **Technical Setup:** Configured strict requirements for identity attestation. Toggled **Require Multi-Factor Authentication on activation** to true, and checked **Require justification on activation** to generate an immutable audit trail.

![6_mfa_justification_guardrails](../../images/Screenshot_2026-06-12_at_9.13.07_PM.jpg)

## Step 1.7: Configuring Assignment Expiration Rules
* **Technical Setup:** Moved to the **Assignment** settings tab. Disabled "Allow permanent eligible assignment" to eliminate persistent standing privilege windows. Set the maximum eligibility lifespan to a strict **6-month limit**.

![7_assignment_expiration](../../images/Screenshot_2026-06-12_at_9.21.23_PM.jpg)

## Step 1.8: Customizing Role Alert Notification Triggers
* **Technical Setup:** Set up direct admin monitoring policies under the **Notification** tab, ensuring critical email alerts are automatically dispatched to the security operations team whenever a user activates this administrative role.

![8_notification_triggers](../../images/Screenshot_2026-06-12_at_9.24.48_PM.jpg)

## Step 1.9: Provisioning an Eligible Role Assignment Pipeline
* **Technical Setup:** Clicked **Add assignments** inside the User Administrator role view to hook up the newly configured lifecycle rules to a specific human engineering identity.

![9_add_assignment_wizard](../../images/Screenshot_2026-06-12_at_9.33.00_PM.jpg)

## Step 1.10: Binding the Target Support Identity
* **Technical Setup:** Bound the test account `Sarah Jenkins` explicitly as an **Eligible** user. This locks down her identity to a strict JIT status, meaning her standing privileges are completely removed, and she must manually request time-bound access through the PIM portal when performing system administration tasks.

![10_user_assignment_complete](../../images/Screenshot_2026-06-12_at_9.35.35_PM.jpg)
