# README.md

noir-age-check — Minimal ZK circuit: prove age ≥ 18 without revealing it

Overview
This open-source repository contains a tiny Noir circuit that proves a private integer “age” is at least 18. The circuit outputs a public boolean true only when the statement holds; the exact age is never revealed. This is a reusable building block for dapps that need age-gated features without storing personal data in plaintext.

Why it’s useful
• Privacy-preserving eligibility checks (no plaintext age).
• Very small surface area; easy to fork and adapt.
• Noir + Nargo layout that mirrors common Aztec/Noir workflows.

Install (local, optional)
1) Install Noir toolchain (Nargo) from the official docs.
2) Clone: git clone https://github.com/youruser/noir-age-check && cd noir-age-check
3) Build: nargo compile
4) Prove (example): nargo prove
5) Verify: nargo verify

How it works (plain English)
• The circuit takes a private input age (unsigned integer).
• It checks if age ≥ 18 inside the circuit.
• If the check passes, the public output is true. If not, proving fails.

Repository structure
• Nargo.toml — Noir project manifest
• src/main.nr — Circuit: asserts that age ≥ 18 and returns a public boolean
• .gitignore — Ignores build outputs
• LICENSE — MIT

Roadmap
1) v0.2: Add example inputs file and a simple script outline for CLI usage.
2) v0.3: Tutorial: integrating the proof flow into a dapp (off-chain verify).
3) v1.0: Patterns for on-chain verification where applicable.

Author / Contact
• Maintainer: casks-mutters
• License: MIT
