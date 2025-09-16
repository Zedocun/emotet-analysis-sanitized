# Emotet Analysis — Sanitized

This repository contains a sanitized public report of an Emotet analysis.  
No malicious binaries or exploit code are included.

## Contents
- `Executive_Summary.md` — one-page summary  
- `ioc/` — sanitized indicators (files, domains, IPs, hashes)  
- `yara/` — sanitized YARA rules  
- `analysis/` — sanitized screenshots  

## Highlights
- Infection chain: DOC macro → PowerShell (Base64) → DLL (`c2r64.dll`) → loader EXE → memory-only payload  
- Observed processes: `ai.exe`, `msedgewebview2.exe`  
- Techniques: reflective DLL injection, API resolution (`ZwAllocateVirtualMemory`, `GetProcAddress`, `LoadLibrary`), anti-debugging  

## Indicators of Compromise
See `ioc/` for full sanitized list.

## Analyst
Ben Rubin — 2025