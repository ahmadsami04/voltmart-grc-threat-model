# VoltMart Electronics GRC Documentation Website Plan

## Purpose

Create a static GRC documentation website for the fictional VoltMart Electronics environment using Markdown, Jekyll, and GitHub Pages.

The website will present the security assessment, proposed controls, synthetic evidence, and hand-over instructions developed during Tasks 1–4.

## Website Pages

| Page              | Planned Location         | Content                                              |
| ----------------- | ------------------------ | ---------------------------------------------------- |
| Home              | index.md                 | Project overview and navigation                      |
| Executive Summary | executive-summary.md     | Key findings, critical risks and recommendations     |
| Security Policies | policies/index.md        | Proposed security policies and procedures            |
| Risk Register     | risk-register/index.md   | STRIDE threats, scores and priorities                |
| Control Mapping   | control-mapping/index.md | ISO 27001 Annex A mappings and mitigations           |
| Evidence Pack     | evidence/index.md        | Collection scripts, sample evidence and verification |
| Hand-over Guide   | handover/index.md        | Site maintenance and document updates                |

## Navigation Order

1. Home
2. Executive Summary
3. Security Policies
4. Risk Register
5. Control Mapping
6. Evidence Pack
7. Hand-over Guide

## Source Documents

- VoltMart_System_Inventory.xlsx
- VoltMart_Data_Flow_Diagram.pdf
- VoltMart_STRIDE_Threat_Matrix.xlsx
- VoltMart_Risk_Register.csv
- VoltMart_ISO27001_Control_Mapping.xlsx
- MITIGATION_STRATEGY.md
- evidence-pack/README.md

## Implementation Approach

- Use Markdown for all GRC documentation pages.
- Use Jekyll to generate the static website.
- Publish from the docs directory on the main branch.
- Use GitHub Pages free hosting.
- Keep original project deliverables in the repository.
- Link the website to the source files for traceability.

## Scope and Limitations

VoltMart is a fictional retail environment.

The identified threats, risk scores, control mappings, and evidence are educational examples.

The website must not claim that controls were deployed, that a production audit was completed, or that ISO 27001 certification was achieved.

## Current Status

Day 1: Website folder structure and navigation plan prepared.

Website pages, Jekyll configuration, deployment and final verification remain pending.
