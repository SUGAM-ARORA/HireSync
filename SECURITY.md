# Security Policy 🔒

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 1.0.x   | :white_check_mark: |
| < 1.0   | :x:                |

## Reporting a Vulnerability

We take security seriously at HireSync. If you discover a security vulnerability, please follow these steps:

1. **DO NOT** create a public GitHub issue
2. Email security@yourdomain.com with:
   - Description of the vulnerability
   - Steps to reproduce
   - Potential impact
   - Any suggested fixes (optional)

We will acknowledge receipt within 24 hours and aim to:
- Confirm the vulnerability within 72 hours
- Release a patch within 7 days for critical issues

## Security Best Practices

When deploying HireSync:

1. **Azure AD Configuration**
   - Use least-privilege access
   - Enable MFA for admin accounts
   - Regular access reviews

2. **Logic Apps Security**
   - Use managed identities
   - Secure parameter handling
   - Regular secret rotation

3. **Resource Management**
   - Use RBAC effectively
   - Monitor resource access
   - Regular security audits

4. **Data Protection**
   - Encrypt sensitive data
   - Use secure communication
   - Regular backup verification

## Security Features

HireSync implements:
- Azure AD authentication
- Role-based access control
- Audit logging
- Encryption at rest
- Secure API communication

## Compliance

- GDPR compliant
- SOC 2 compatible
- ISO 27001 aligned

## Updates

Security updates are released as:
- Patch versions for critical fixes
- Minor versions for non-critical updates

Stay updated by:
- Watching our repository
- Following our security announcements
- Subscribing to our newsletter