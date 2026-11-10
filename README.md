## VoltMart Electronics: GRC Threat Model Project

## Project Overview

VoltMart Electronics is a fictional mid-sized electronics retailer operating an online storefront, retail point-of-sale (POS) terminals, inventory management systems, and supporting IT infrastructure.

This project develops a simulated Governance, Risk, and Compliance (GRC) assessment to support ISO/IEC 27001:2022 audit preparation.

**Project:** Ezitech Cybersecurity Internship
**Environment:** Fictional educational simulation
**Current Phase:** Task 1, System Inventory and Data-Flow Diagram

## Task 1: System Inventory and Data-Flow Diagram

The objective of Task 1 is to identify the organization's IT assets, document system ownership and network locations, and create a data-flow diagram showing the main information exchanges and logical trust boundaries.

### System Inventory

[View System Inventory](VoltMart_System_Inventory.xlsx)

### Data-Flow Diagram

**Diagram files:**

- [View Diagram (PNG)](VoltMart_Data_Flow_Diagram.drawio.png)
- [View Diagram (PDF)](VoltMart_Data_Flow_Diagram.pdf)
- [Download Editable Diagram](VoltMart_Data_Flow_Diagram.drawio)

To edit the diagram, open the `.drawio` file using [diagrams.net](https://app.diagrams.net/).

### Supporting Documentation

- [Project Scope](PROJECT_SCOPE.md)
- [Data-Flow Notes](DATA_FLOW_NOTES.md)

The data-flow notes explain the main information exchanges, logical network zones, security considerations, and limitations of the simplified diagram.

## Scope and Assumptions

All assets, network zones, and business scenarios are fictional.

No real customer records, payment-card information, employee information, or production infrastructure are used.

The data-flow diagram represents selected logical exchanges rather than a complete physical network topology. The inventory provides additional connected-system relationships for later analysis.

This project is an educational GRC exercise and does not constitute an actual ISO 27001 certification audit.

## Planned Project Phases

- Task 1: System Inventory and Data-Flow Diagram
- Task 2: STRIDE Threat Modelling and Risk Ranking
- Task 3: ISO 27001 Annex A Control Mapping and Mitigation Strategy
- Task 4: Evidence Collection Pack and Automation Scripts
- Task 5: GRC Documentation Website and Final Handover

## Tools Used

- LibreOffice Calc
- diagrams.net
- Visual Studio Code
- Git and GitHub

## Project Status

Task 1 (System Inventory and Data-Flow Diagram) and Task 2 (STRIDE Threat Modelling and Risk Ranking) have been accepted by the Ezitech mentor. Task 3 (ISO 27001 Annex A Control Mapping and Mitigation Strategy) is in progress. The control mapping, implementation assessment, decision log, and mitigation strategy have been prepared for final verification before submission.

## Task 2: STRIDE Threat Modelling and Risk Ranking

### Overview

This task identifies potential cybersecurity threats affecting VoltMart Electronics, a fictional retail organization. The assessment builds on the 15-asset inventory and Level 1 data-flow diagram completed in Task 1.

The threat scenarios are hypothetical and are not evidence of confirmed vulnerabilities or security incidents.

### STRIDE Threat Matrix

The threat matrix contains 18 scenarios, with three examples for each of the six STRIDE categories:

- Spoofing
- Tampering
- Repudiation
- Information Disclosure
- Denial of Service
- Elevation of Privilege

Each entry identifies an asset, threat description, potential impact, proposed security considerations, and recommended mitigation.

[Download STRIDE Threat Matrix and Methodology (Excel)](VoltMart_STRIDE_Threat_Matrix.xlsx)

### Risk Assessment Methodology

The assessment uses a qualitative 5 × 5 scoring model.

- Likelihood: 1 (Rare) to 5 (Almost Certain)
- Impact: 1 (Insignificant) to 5 (Severe)
- Risk Score = Likelihood × Impact
- Low: 1–4
- Medium: 5–9
- High: 10–16
- Critical: 17–25

Threats are ranked by descending risk score. Ties are resolved using the original threat order.

These scores represent preliminary inherent-risk estimates for a fictional environment. They do not reflect verified control effectiveness, and the thresholds are specific to this educational project rather than prescribed by ISO/IEC 27001.

The Excel workbook includes separate STRIDE Matrix, Risk Register, and Risk Methodology worksheets.

### Risk Assessment Results

The 18 assessed threats produced the following preliminary distribution:

- Critical: 2
- High: 14
- Medium: 2
- Low: 0

The two highest-priority threats are:

1. TH-10: Customer database information disclosure (score 20).
2. TH-17: Web application privilege escalation (score 20).

The risk rankings indicate which hypothetical scenarios would warrant earlier investigation and mitigation planning.

### Risk Register

The CSV contains 18 threat entries with asset identifiers, STRIDE categories, likelihood and impact ratings, calculated risk scores, risk levels, priority rankings, and scoring rationales.

[Download Risk Register (CSV)](VoltMart_Risk_Register.csv)

### Scope and Limitations

This assessment uses fictional systems and assumed threat scenarios. No penetration testing, production-system assessment, or real customer-data analysis was performed.

Proposed security safeguards in the matrix should not be interpreted as verified implemented controls. Risk treatment decisions and detailed ISO/IEC 27001 control mapping are outside the scope of this Task 2 assessment.

## Task 3: ISO 27001 Annex A Control Mapping and Mitigation Strategy

### Overview

This task maps the 18 identified STRIDE threats to relevant ISO/IEC 27001:2022 Annex A security controls and evaluates proposed mitigation strategies.

### Deliverables

- [ISO 27001 Control Mapping and Decision Log (Excel)](VoltMart_ISO27001_Control_Mapping.xlsx)
- [Risk Mitigation Strategy (Markdown)](MITIGATION_STRATEGY.md)

### Key Results

- 18 risks mapped to proposed Annex A controls.
- 22 selected Annex A controls documented in the reference sheet.
- 18 implementation assessments covering cost, effort, benefit, and priority.
- 18 control decisions with justifications, trade-offs, and alternatives.
- 15 proposed Phase 1 decisions and 3 proposed Phase 2 decisions.
- Two Critical risks, TH-10 and TH-17, prioritized for immediate attention.

### Scope and Limitations

All assessments are based on a fictional retail environment. Control implementations, management approvals, and operating effectiveness have not been verified. The proposed mappings do not establish ISO 27001 certification or compliance.
