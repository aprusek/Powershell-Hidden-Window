<h1>Hidden PowerShell Script Runner </h1>

This setup allows you to run PowerShell scripts with the custom **`.ps9`** file extension by simply double-clicking them in File Explorer.  
The scripts execute **silently** (no PowerShell console window appears).

# Why does this exist?
I have a number of powershell scripts that produce tablular reports on how a system is condfigured <BR>
I wanted to double click on these powershell scripts and only display the "Out-GridView" window.<BR><BR>

- There were many suggestions on the net that did not work.<BR>
- Using AI did not work as it was reading incorrect suggestions.<BR>
- The assumptions AI was making were truly stunning.<BR>
- The way Windows and Microsoft does certain things is also stunning.
- Even the readme it generated perpetuated these error which I fixed manually.<BR>

## Features

- Double-click any `.ps9` file to run it with **PowerShell 7**
- Completely hidden execution (no flashing black window)
- Uses `ExecutionPolicy Bypass` so scripts run without policy restrictions
- Clean PowerShell icon for `.ps9` files
- Works on Windows 10 and Windows 11

## Files Required

You need one file **`PS9Runner.vbs`** in a folder of your choosing
I chose `D:\Programs\AAA_Scripts\`:

## Installation

1. Make sure **PowerShell 7** is installed (recommended: latest LTS version).

2. Place the `PS9Runner.vbs` file in `D:\Programs\AAA_Scripts\`.

3. Double-click the file **`PS9Runner.reg`** and click **Yes** to merge it into the Windows Registry.

4. Restart Windows Explorer:
   - Open Task Manager → Find **Windows Explorer** → Click **Restart**
   - I found this step to be redundant

5. Test by double-clicking any `.ps9` file. It should run silently.

## How It Works

- `.ps9` files are associated with the `PS9Script` ProgID in the Registry
- Double-click triggers `wscript.exe` → `PS9Runner.vbs` → PowerShell 7
- The script content is read and executed via `Invoke-Expression` (bypasses the `.ps1` extension restriction)

## Main Files
- PS9Runner.reg - Registery Entries to associate .ps9 with the hidden helper script
- PS9Runner.vbs - The helper script as suggested options to powershell.exe did not work

## Example Files
- UI-IPCONFIGDATA.ps9 - Example script that display a Gridview window of Network Configuration
- UI-IPCONFIGDATA2.ps9 - Another Example script that display a Gridview window of Network Configuration
- UI-WIFI.ps9 - Example script that display a Gridview window of WIFI SSIDs
- UI-WifiPassword.ps3 - Example script that display a Gridview window of WIFI Passwords

## Removal / Uninstall

To be continued...


