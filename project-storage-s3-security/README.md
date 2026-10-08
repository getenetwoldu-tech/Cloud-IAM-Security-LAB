# AWS S3 Security & Data Protection Audit Lab

## Project Overview
Configured an enterprise-grade secure Amazon S3 storage bucket enforcing strict data privacy, versioning, default server-side encryption, and secure transport policies within an AWS sandbox environment.

---

## Architecture & Security Controls Implemented
* **Block Public Access:** Enabled all four public access blocks to ensure zero risk of accidental public data exposure.
* **Bucket Versioning:** Enabled object versioning to protect against accidental object overwrites or deletions.
* **Default Encryption:** Applied Server-Side Encryption with S3 Managed Keys (SSE-S3) for data at rest.
* **TLS Enforcement Policy:** Wrote a custom IAM bucket policy explicitly denying unencrypted HTTP requests (`aws:SecureTransport: false`).

---

## Step-by-Step Implementation Proof

### 1. Secure Bucket Creation & Public Access Block
We created a dedicated S3 bucket and ensured all public access settings were strictly locked down.

![S3 Bucket List View](images/s3-bucket-list.png)

### 2. Custom JSON Bucket Policy
We applied a least-privilege policy forcing all traffic to communicate over secure HTTPS channels.

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "EnforceHTTPSConnections",
            "Effect": "Deny",
            "Principal": "*",
            "Action": "s3:*",
            "Resource": [
                "arn:aws:s3:::secure-audit-lab-devops-gw",
                "arn:aws:s3:::secure-audit-lab-devops-gw/*"
            ],
            "Condition": {
                "Bool": {
                    "aws:SecureTransport": "false"
                }
            }
        }
    ]
}
