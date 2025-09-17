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

## Key highlights
- Infection chain: DOC → VBA Macro → encoded PowerShell (payload redacted) → DLL (`c2r64.dll`) → loader EXE → in-memory reflective injection.  
- Observed processes: `WINWORD.EXE`, `ai.exe`, `msedgewebview2.exe`.  
- Techniques: reflective DLL injection, API resolution, process hollowing.

## Images (examples)
Below are selected sanitized screenshots (see `analysis/screenshots/`):

[Procmon snapshot](analysis/screenshots/procmon-powershell-01.png)
*Figure 1: Procmon snapshot showing powershell.exe executions (encoded command redacted).*

[IDA disassembly](analysis/screenshots/ida-01.png)
*Figure 2: IDA disassembly (hex bytes and addresses redacted).*

[Process tree](blob/main/analysis/screenshots/process-tree-01.png)
*Figure 3: Process tree showing WINWORD.exe spawning ai.exe and msedgewebview2.exe (sensitive fields redacted).*

[File properties](analysis/screenshots/c2r64-properties-01.png)
*Figure 4: File properties for c2r64.dll (machine/user names redacted).*

[Loaded modules](analysis/screenshots/module-list-01.png)
*Figure 5: Loaded modules observed in the process.*

[Infection chain overview](analysis/screenshots/infection_chain.png)
*Figure 6: Infection chain overview (sanitized).*


## Analyst

Ben Rubin — 2025



