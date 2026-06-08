Lab 1: AWS Role-Based Access Control (RBAC) & Least-Privilege Engineering
Project Objective:
The goal of this lab was to implement industry-standard security boundaries inside a native AWS infrastructure. By moving away from single-user permission assignments, I deployed Role-Based Access Control (RBAC) to enforce the Principle of Least Privilege for an engineering department.
Infrastructure Architecture & Implementation Steps
 Group & Policy Creation
* Created a functional IAM User Group named `Network-Engineers`.
* Attached the AWS-managed `AmazonVPCFullAccess` policy to the group, establishing a distinct technical boundary that limits administrative capabilities strictly to virtual networks.
<img width="600" alt="IAM Group Creation" src="https://github.com/user-attachments/assets/77826a79-ac5b-40fb-be65-951df808b81d" />
 Identity Provisioning
* Provisioned an individual test account named `network-admin-test` with unique console login capabilities.
* Attached the user directly to the `Network-Engineers` group to inherit group-level permissions programmatically.
Security Validation & Testing Summary
Authorized Access Verification
Logged into an isolated browser session as `network-admin-test`. Verified full programmatic visibility and configuration access across VPC dashboards, routing tables, subnets, and internet gateways.
<img width="800" alt="VPC Access Allowed" src="https://github.com/user-attachments/assets/b248c208-cf4c-41d3-ab0c-d278de941215" />
 Least-Privilege Enforcement Verification
Attempted to access security systems (IAM) and specialized compute infrastructure. Access was successfully denied by AWS, proving that horizontal privilege escalation is strictly blocked.
<img width="800" alt="IAM Access Denied" src="https://github.com/user-attachments/assets/d24f00e2-f601-4ddf-a57b-839816bfcff3" />
