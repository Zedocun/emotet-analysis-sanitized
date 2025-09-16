# Executive Summary — Emotet Analysis (Sanitized)

**Sample Type:** Malicious Word Document (`165-2001.doc`)  
**Malware Family:** Emotet  
**Date:** 2025  
**Analyst:** Ben Rubin  

### Overview
This Emotet sample was delivered via a malicious Word document (`165-2001.doc`). When opened, the document executed a VBA macro that launched obfuscated Base64-encoded PowerShell. This initiated a multi-stage infection chain that ultimately loaded a DLL (`c2r64.dll`) and created additional processes.

### Key Findings
- **Infection chain:** DOC → Macro → PowerShell (Base64) → DLL (`c2r64.dll`) → loader EXE (`DLLLoader64_xxxx.exe`) → memory-only payload  
- **Observed processes:** `ai.exe`, `msedgewebview2.exe`  
- **Techniques:** reflective DLL injection, memory-only execution, API resolution (`ZwAllocateVirtualMemory`, `GetProcAddress`, `LoadLibrary`), anti-debugging, token manipulation, process hollowing  

### Indicators of Compromise (IOCs)
- **Files:** `165-2001.doc`, `c2r64.dll`, `DLLLoader64_xxxx.exe`  
- **Processes:** `ai.exe`, `msedgewebview2.exe`  
- **Network:**  
  - IP: `181.10.46.92`  
  - Domains: `zhongsijiacheng.com`, `artistascitizen.com`, `ombchardin.com`,  
    `apsolution.work`, `happycheftv.com`, `careercoachconnection.com`, `tacademicos.com`

### MITRE ATT&CK Mapping
- **Initial Access:** Spearphishing Attachment (T1566.001)  
- **Execution:** PowerShell (T1059.001)  
- **Defense Evasion:** Obfuscated Files (T1027), Reflective DLL Injection (T1620)  
- **Persistence:** DLL Hijacking (T1574.002)  
- **Discovery:** System Information Discovery (T1082)  
- **C2:** HTTP Application Layer Protocol (T1071.001)  

### Recommendations
1. Disable and block unsigned Office macros.  
2. Enable PowerShell transcription/module logging.  
3. Deploy endpoint monitoring to detect reflective injection and suspicious API usage.  
4. Monitor unexpected DLL loads (`c2r64.dll`) and child process creation (`ai.exe`, `msedgewebview2.exe`).  
