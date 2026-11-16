# VoltMart Electronics: Evidence Collection Pack

## Purpose

This folder contains a sample security evidence collection system for the fictional VoltMart Electronics environment.

The purpose is to demonstrate how logs, configuration records, user-account information, and system snapshots can be collected and organized for an ISO 27001 audit.

All sample evidence is synthetic. It does not represent verified production systems or actual ISO 27001 compliance.

## Evidence Categories

| Category      | Evidence                               | Purpose                                             |
| ------------- | -------------------------------------- | --------------------------------------------------- |
| Logs          | Application and security event logs    | Support monitoring and incident investigation       |
| Configuration | System and application settings        | Support configuration and security reviews          |
| Users         | Sample user-account and access records | Support identity and access reviews                 |
| System        | Basic environment snapshots            | Support system inventory and configuration evidence |

## Folder Structure

- `scripts/`: Python and Bash collection scripts.
- `sample-input/logs/`: Synthetic log files for testing.
- `sample-input/config/`: Fictional configuration files.
- `sample-input/users/`: Synthetic user-account records.
- `sample-output/logs/`: Collected log evidence.
- `sample-output/config/`: Collected configuration evidence.
- `sample-output/users/`: Collected user evidence.
- `sample-output/system/`: Generated system snapshots.

## Collection Approach

The Python script will collect log files from the controlled sample-input directory.

The Bash script will gather configuration files, sample user records, and non-sensitive test-environment information.

Both scripts will use standard language or shell facilities without third-party dependencies.

## Evidence Handling

- Do not collect real passwords, tokens, or private employee information.
- Do not upload sensitive workstation or organizational configuration data.
- Preserve original sample inputs for traceability.
- Record collection outcomes and errors.
- Clearly distinguish synthetic examples from actual audit evidence.

## Current Status

Days 1–4 completed. The evidence collection pack contains three synthetic log files, two fictional configuration files, one synthetic user-account list, and one simulated system snapshot.

The Python and Bash collectors have been tested successfully, including SHA-256 integrity checks and missing-input error handling. The combined PowerShell runner has also been tested and produces seven evidence files plus one JSON manifest.

Day 5 focuses on final verification, reproducibility testing, and GitHub delivery. Day 6 will cover final review and Ezitech submission.

## How to Run the Evidence Collectors

### Requirements

- Python 3 (standard library only)
- Git Bash or another compatible Bash environment
- PowerShell for the Windows combined runner
- No third-party Python packages required

### Run the Python Log Collector

From the repository root:

```powershell
py .\evidence-pack\scripts\collect_logs.py
```

Expected result: 3 synthetic log files collected with 0 errors.

### Run the Bash System Collector

On Windows with Git Bash installed at the default location:

```powershell
& "C:\Program Files\Git\bin\bash.exe" ./evidence-pack/scripts/collect_system.sh
```

Expected result: 2 configuration files, 1 user CSV, and 1 synthetic system snapshot collected with 0 errors.

### Run Both Collectors Together

From the repository root in Windows PowerShell:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File ".\evidence-pack\scripts\run_collection.ps1"
```

The combined runner recreates `sample-output/` and executes both collectors.

Expected result:

- 3 log files
- 2 configuration files
- 1 synthetic user-account CSV
- 1 fictional system snapshot
- 1 JSON collection manifest

**Total: 8 output files, including 7 evidence files.**

## Verification

The Python collector records SHA-256 hashes in `sample-output/logs/collection_manifest.json`.

The collected log, configuration, and user files were independently compared with their synthetic source files using SHA-256 hashes.

Both collectors were tested with missing input files. They correctly reported errors and succeeded after the inputs were restored.

The combined runner was tested successfully and produced 8 output files.

## Limitations

- All evidence is synthetic and intended for training and demonstration.
- The system does not collect real Windows security logs or actual employee accounts.
- The combined runner deletes and recreates the generated `sample-output/` directory. Do not use it to preserve real audit or forensic evidence.
- The individual collectors can overwrite existing output files. A failed standalone collection may leave older output files in place.
- The combined runner reports a failure if either collector exits unsuccessfully, but it does not produce a complete, timestamped audit trail for every collection attempt.
- The Bash system snapshot describes a simulated environment, not the actual host computer.
- This demonstration does not establish ISO 27001 compliance or prove that proposed controls are implemented.

## Future Improvements

For a production-ready system, collection runs should use unique timestamped directories, access controls, complete manifests, integrity verification, retention policies, and formal evidence handling procedures.
