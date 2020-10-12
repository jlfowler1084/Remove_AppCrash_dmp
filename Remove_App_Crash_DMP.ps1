$ErrorActionPreference = 'SilentlyContinue'
Get-ChildItem "c:\users" -Exclude "Default" | ForEach-Object {
    $path = $_.FullName + "\AppData\Local\Microsoft\Windows\WER\ReportQueue\AppCrash_message*\*.hdmp"
    Get-Item $path | Remove-Item -Force
  } 
