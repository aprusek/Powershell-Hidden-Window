' PS9Runner.vbs - Runs .ps9 files hidden with PowerShell 7
Dim args, scriptPath, pwshPath, cmd

Set args = WScript.Arguments
If args.Count = 0 Then WScript.Quit

scriptPath = args(0)

' Change this path if your PowerShell 7 is installed elsewhere
pwshPath = "C:\Program Files\PowerShell\7\pwsh.exe"

cmd = """" & pwshPath & """ -NoLogo -ExecutionPolicy Bypass -Command ""& { Get-Content -LiteralPath '""" & scriptPath & """' -Raw | Invoke-Expression }"""

CreateObject("WScript.Shell").Run cmd, 0, False