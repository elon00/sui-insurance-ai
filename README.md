# Sui Insurance AI ($SUIINS)
[![CI/CD Pipeline](https://github.com/elon00/sui-insurance-ai/actions/workflows/ci-cd-pipeline.yml/badge.svg)](https://github.com/elon00/sui-insurance-ai/actions/workflows/ci-cd-pipeline.yml)
[![Reality Check](https://img.shields.io/badge/Reality%20Check-100%2F100%20GENUINE%20GREEN-emerald.svg)](tests/reality_check_harness.py)
[![PQC Standard](https://img.shields.io/badge/NIST-FIPS%20203%2F204-purple.svg)]()
[![Blockchain](https://img.shields.io/badge/Blockchain-Sui%20Network%20(Move%20Testnet)-blue.svg)]()

> **Object-Centric Vault Indemnity, Programmable Transaction Block (PTB) Safety, and Move Dynamic Field Coverage on Sui.**

---

## 🏛️ Project Profile
- **Project Identity:** Sui Insurance AI
- **Asset Ticker:** $SUIINS
- **Core Theme:** Object-Centric Vault Indemnity & Programmable Transaction Safety
- **Blockchain:** Sui Network (Move Testnet)
- **Smart Contract:** `SuiInsuranceRegistry.sol`

---

## 🚀 Key Features
- **Deterministic 64-bit Conway Engine:** Non-linear invariant state machine in zero-dependency Rust (`src/main.rs`).
- **Native Smart Contract:** `SuiInsuranceRegistry.sol` enforcing non-custodial parametric insurance and solvency invariants.
- **Agentic Actuary Service:** Autonomous Python client in `src/sui_actuary_agent.py`.
- **Interactive QUX Launchpad:** Responsive dashboard with live Conway visualizer and Web4 QR generator (`index.html`).
- **Model Context Protocol (MCP):** 2 native tools exposed via `mcp.json`.

---

## 🧪 Testing & Verification
```bash
# Run 5-Gate Reality Check Test Harness
python tests/reality_check_harness.py

# Run Unit & Integrity Test Suite
python -m unittest discover tests
```
