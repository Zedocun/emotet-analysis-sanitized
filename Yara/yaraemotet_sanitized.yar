rule Emotet_Sanitized {
  meta:
    author = "Ben Rubin"
    description = "Sanitized YARA for Emotet sample (based on metadata only)"
    date = "2025-09-16"
  strings:
    $ps = "powershell -enc" nocase
    $dll = "c2r64.dll" nocase
    $api1 = "ZwAllocateVirtualMemory" nocase
  condition:
    any of them
}
