---
layout: grc
title: Executive Summary
---

# VoltMart Electronics: Executive GRC Summary

## 1. Project Overview

VoltMart Electronics is a fictional mid-sized electronics retailer operating a web storefront, inventory management system, and point-of-sale (POS) environment.

This project presents a sample governance, risk, and compliance (GRC) assessment designed to support preparation for an ISO/IEC 27001 audit.

The assessment covers system inventory, data flows, STRIDE threat modelling, risk ranking, proposed Annex A security controls, mitigation planning, and synthetic evidence collection.

All findings are educational and based on a fictional environment.

## 2. Assessment Scope

The assessment considers:

- Web storefront and application services.
- Customer and transaction information.
- Inventory management systems.
- POS terminals and retail infrastructure.
- Employee and administrator access.
- Network and supporting IT services.

The project does not represent a production penetration test, formal certification audit, or verified control implementation.

## 3. Key Risk Findings

The STRIDE threat modelling exercise identified 18 hypothetical threats.

| Risk Level | Number |
| ---------- | -----: |
| Critical   |      2 |
| High       |     14 |
| Medium     |      2 |
| Low        |      0 |
| **Total**  | **18** |

Risks were scored using a project-defined likelihood and impact scale from 1 to 5.

Risk Score = Likelihood Ã— Impact.

These are preliminary inherent-risk estimates, not residual-risk scores.

## 4. Highest-Priority Risks

### TH-10: Customer Database Information Disclosure

- Risk score: 20 (Critical).
- Risk scenario: Misconfigured access permissions expose customer information.
- Proposed Annex A control: A.8.3, Information access restriction.
- Recommended action: Review database permissions, restrict unnecessary access, and verify least-privilege enforcement.

### TH-17: Web Application Privilege Escalation

- Risk score: 20 (Critical).
- Risk scenario: An application authorization flaw allows a standard user to access administrator functions.
- Proposed Annex A control: A.8.25, Secure development life cycle.
- Recommended action: Review authorization logic, test privilege boundaries, and remediate identified weaknesses.

Both risks should receive priority attention during the proposed first implementation phase.

## 5. Control Mapping and Mitigation Strategy

The project maps 18 threats to relevant ISO/IEC 27001:2022 Annex A controls.

The control mapping workbook includes:

- 22 selected Annex A control references.
- 18 risk-to-control mappings.
- 18 implementation assessments considering cost, effort, benefit, and priority.
- 18 documented control decisions and trade-offs.

The proposed mitigation plan contains:

- Phase 1: 15 control decisions.
- Phase 2: 3 control decisions.

These phases represent proposed implementation priorities, not completed deployment activities.

## 6. Evidence Collection

A sample evidence collection pack was developed using Python, Bash, and PowerShell.

The system produces:

- Three synthetic log files.
- Two fictional configuration files.
- One synthetic user-account list.
- One simulated system snapshot.
- One JSON collection manifest.

The collection scripts were tested locally, including missing-input handling and SHA-256 integrity checks.

The evidence does not demonstrate operating effectiveness of real organizational controls.

## 7. Recommendations

VoltMart should prioritize:

1. Restricting access to sensitive customer records.
2. Strengthening application authorization and secure development practices.
3. Improving authentication, privileged-access management, and security monitoring.
4. Protecting POS and inventory systems against unauthorized changes and disruption.
5. Establishing control ownership, implementation evidence, and formal risk review procedures.

Proposed controls should be tested and approved before being treated as operational safeguards.

## 8. Limitations

The project is based entirely on fictional scenarios and synthetic evidence.

No real production systems, customer records, or employee accounts were assessed.

Risk estimates, proposed controls, and implementation priorities have not been validated against a live organization.

The project does not establish ISO 27001 certification, compliance, or formal audit assurance.

## 9. Conclusion

VoltMart's GRC assessment provides a structured foundation for understanding security risks, prioritizing safeguards, and organizing supporting documentation.

The two Critical risks, TH-10 and TH-17, are recommended for early attention.

The accompanying risk register, control mapping, mitigation strategy, and evidence pack support further planning and review, but actual implementation and independent verification would be required before making compliance claims.

