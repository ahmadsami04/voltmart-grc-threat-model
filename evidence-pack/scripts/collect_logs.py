
#!/usr/bin/env python3
"""Collect synthetic VoltMart log evidence with SHA-256 verification."""

from pathlib import Path
from datetime import datetime, timezone
import hashlib
import json
import shutil
import sys

BASE_DIR = Path(__file__).resolve().parent.parent
SOURCE_DIR = BASE_DIR / "sample-input" / "logs"
OUTPUT_DIR = BASE_DIR / "sample-output" / "logs"
MANIFEST_FILE = OUTPUT_DIR / "collection_manifest.json"


def sha256_file(path):
    digest = hashlib.sha256()
    with path.open("rb") as file:
        for chunk in iter(lambda: file.read(65536), b""):
            digest.update(chunk)
    return digest.hexdigest()


def main():
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

    manifest = {
        "project": "VoltMart Electronics",
        "evidence_type": "Synthetic security logs",
        "collected_at_utc": datetime.now(timezone.utc).isoformat(),
        "files": [],
        "errors": [],
    }

    if not SOURCE_DIR.is_dir():
        manifest["errors"].append("Source log directory not found")
    else:
        for source in sorted(SOURCE_DIR.glob("*.log")):
            try:
                if not source.is_file() or source.is_symlink():
                    continue

                destination = OUTPUT_DIR / source.name
                shutil.copy2(source, destination)

                source_hash = sha256_file(source)
                destination_hash = sha256_file(destination)

                if source_hash != destination_hash:
                    raise ValueError("SHA-256 mismatch after copying")

                manifest["files"].append({
                    "name": source.name,
                    "size_bytes": destination.stat().st_size,
                    "sha256": destination_hash,
                    "status": "verified",
                })
                print(f"[OK] Collected: {source.name}")

            except (OSError, ValueError) as error:
                manifest["errors"].append(
                    f"{source.name}: {error}"
                )
                print(f"[ERROR] {source.name}: {error}")

    if not manifest["files"]:
        manifest["errors"].append("No log files collected")

    MANIFEST_FILE.write_text(
        json.dumps(manifest, indent=2),
        encoding="utf-8",
    )

    print(f"\nManifest: {MANIFEST_FILE}")
    print(f"Collected: {len(manifest['files'])} files")
    print(f"Errors: {len(manifest['errors'])}")

    return 1 if manifest["errors"] else 0


if __name__ == "__main__":
    sys.exit(main())
