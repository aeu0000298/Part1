cd "C:\apps\Windows Kits\10\ADK"
Start-Process -FilePath adksetup.exe -ArgumentList "/s" -Wait

cd "C:\apps\windows kits\10\ADKWinPEAddons"
Start-Process -FilePath adkwinpesetup.exe -ArgumentList "/s" -wait

cd "C:\apps"
Start-Process -FilePath msiexec.exe -ArgumentList "/i `"mdt.msi`" /quiet /norestart" -wait

$mdtInstallerPath = "C:\Applications\mdt.msi"
#Silent Install
Start-Process -FilePath msiexec.exe -ArgumentList "/i `"$mdtInstallerPath`" /quiet /norestart" -Wait