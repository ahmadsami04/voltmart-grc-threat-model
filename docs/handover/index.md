---
layout: grc
title: Hand-over Guide
---

# VoltMart Electronics: Hand-over and Maintenance Guide

## 1. Purpose and Scope

This guide explains how to maintain the fictional VoltMart Electronics GRC documentation website, update assessment records, operate the synthetic evidence collection workflow, and publish changes through GitHub Pages.

VoltMart Electronics is a fictional organization. The policies, controls, risk assessments, and evidence are illustrative and do not demonstrate production compliance.

## 2. Repository and Website

- Repository: [VoltMart GRC Threat Model](https://github.com/ahmadsami04/voltmart-grc-threat-model)
- Live website: [VoltMart GRC Documentation](https://ahmadsami04.github.io/voltmart-grc-threat-model/)
- Publishing branch: `main`
- Publishing folder: `/docs`
- Site configuration: `docs/_config.yml`
- Jekyll layout: `docs/_layouts/grc.html`
- Theme: `jekyll-theme-cayman`

GitHub Pages is configured to publish from the `/docs` folder on the `main` branch.

## 3. Documentation Structure

| Location | Purpose |
| --- | --- |
| `docs/index.md` | Website homepage |
| `docs/executive-summary.md` | Executive summary |
| `docs/policies/` | Proposed security policies |
| `docs/risk-register/index.md` | STRIDE risk register |
| `docs/control-mapping/index.md` | ISO 27001 Annex A mapping |
| `docs/evidence/index.md` | Evidence collection documentation |
| `docs/handover/index.md` | This maintenance guide |
| `docs/_config.yml` | Jekyll site configuration |
| `docs/_layouts/grc.html` | Navigation and table styling |
| `evidence-pack/` | Synthetic collection scripts and evidence |

## 4. Updating Documentation

1. Open the project repository locally in VS Code.
2. Review the relevant approved source document before editing.
3. Update the corresponding Markdown file inside `docs/`.
4. Preserve the YAML front matter, including `layout: grc`.
5. Check that internal links remain correct.
6. Review changes using `git diff`.
7. Commit and push the approved changes.
8. Verify the updated page on the live website.

The original risk register CSV and ISO 27001 Excel workbook should remain the authoritative assessment sources.

When changing risk scores, priorities, controls, or mitigation recommendations, update the source assessment first and ensure the published Markdown remains consistent.

## 5. Maintaining the Risk Register

The risk register contains 18 hypothetical STRIDE threats.

Risk score is calculated as likelihood multiplied by impact, using project-defined scales.

When updating the register:

1. Review the threat description and affected asset.
2. Reassess likelihood and impact.
3. Recalculate the risk score and priority.
4. Document the rationale for changes.
5. Update the approved source CSV.
6. Regenerate or revise `docs/risk-register/index.md`.
7. Verify the published table against the source.

Do not represent proposed risk reductions as achieved without supporting evidence.

## 6. Maintaining ISO 27001 Control Mapping

The control mapping connects 18 assessed threats with proposed ISO/IEC 27001:2022 Annex A controls.

When updating mappings:

1. Review the original Excel workbook.
2. Confirm the control identifier and purpose.
3. Update proposed mitigations and implementation priorities.
4. Preserve traceability to the relevant threat ID.
5. Update the Markdown mapping page.
6. Check all 18 mappings for completeness and consistency.

Control mapping does not itself establish implementation or ISO 27001 certification.

## 7. Evidence Collection Workflow

The synthetic evidence pack is stored in `evidence-pack/`.

Main scripts:

- `scripts/collect_logs.py`: Collects synthetic logs and records SHA-256 hashes in a JSON manifest.
- `scripts/collect_system.sh`: Collects selected synthetic configuration and system information.
- `scripts/run_collection.ps1`: Coordinates the collection workflow on Windows.

For the exact execution procedure, prerequisites, and sample files, consult the [Evidence Pack README](https://github.com/ahmadsami04/voltmart-grc-threat-model/blob/main/evidence-pack/README.md).

### Evidence Maintenance

1. Review the configured sample-input paths.
2. Confirm that no confidential or real production information is included.
3. Run the documented collection workflow in the intended test environment.
4. Inspect the generated files and collection manifest.
5. Verify the SHA-256 hashes recorded for collected logs.
6. Review errors before accepting the collection results.
7. Retain appropriate version history for changes to scripts and documentation.

The current workflow should not be assumed to cryptographically verify every generated artifact.

## 8. Publishing Website Changes

From the project directory, use:

```powershell
git status
git add docs/
git commit -m "Update VoltMart GRC documentation"
git push origin main
```

Review `git status` before staging files. Do not commit temporary exports, credentials, confidential data, or unrelated files.

After pushing:

1. Open the repository on GitHub.
2. Review the Actions tab for the Pages deployment status.
3. Open the live website.
4. Refresh the browser if an older version appears.
5. Verify the updated pages and navigation links.

## 9. GitHub Pages Configuration

In the GitHub repository:

1. Open Settings.
2. Select Pages.
3. Confirm Source is `Deploy from a branch`.
4. Confirm Branch is `main`.
5. Confirm Folder is `/docs`.

The Jekyll configuration must retain the correct project URL:

```yaml
url: "https://ahmadsami04.github.io"
baseurl: "/voltmart-grc-threat-model"
```

Changing the repository name or publishing path may require updating these settings and internal links.

## 10. Troubleshooting

### Website returns 404

- Confirm the requested Markdown page exists.
- Check the filename and directory spelling.
- Confirm the latest commit was pushed.
- Review GitHub Pages deployment status.
- Confirm the `main` and `/docs` settings.

### Website does not show recent changes

- Check the latest Git commit.
- Confirm the push succeeded.
- Review the deployment workflow.
- Refresh the browser or clear its cache.

### Navigation link is broken

- Check the target page path.
- Verify the relative URL.
- Confirm the page has valid Jekyll front matter.
- Test the link after deployment.

### Tables are difficult to read

- Check `docs/_layouts/grc.html`.
- Verify the table scrolling CSS is present.
- Test horizontal scrolling on desktop and mobile.

### Evidence collection fails

- Read the error output.
- Verify the required input files exist.
- Confirm the required Python, PowerShell, and Bash environments are available.
- Review the instructions in `evidence-pack/README.md`.

## 11. Recommended Maintenance Schedule

- After each approved assessment change: update the affected Markdown documentation.
- After script changes: rerun the synthetic evidence collection tests.
- Before each publication: review the Git diff and check for sensitive information.
- After each deployment: verify the affected pages and links.
- Periodically: review the risk register, policies, control mappings, and evidence procedures for relevance.

These are recommended maintenance activities for the fictional project, not evidence that ongoing operational reviews have occurred.

## 12. Handover Acceptance Checklist

- [ ] Repository is accessible to the intended maintainer.
- [ ] GitHub Pages website is live.
- [ ] Executive summary and security policies are accessible.
- [ ] Risk register and control mapping are accessible.
- [ ] Evidence pack documentation and scripts are accessible.
- [ ] Hand-over Guide is accessible.
- [ ] Navigation and external links have been checked.
- [ ] Maintenance and deployment procedures are understood.

## 13. Related Pages

- [Homepage](../)
- [Executive Summary](../executive-summary.html)
- [Security Policies](../policies/)
- [Risk Register](../risk-register/)
- [Control Mapping](../control-mapping/)
- [Evidence Pack](../evidence/)
