$VersiondeWindows = (Get-WmiObject -Class Win32_OperatingSystem).Caption

if ($VersiondeWindows -match "Microsoft Windows 10 Home" -or $VersiondeWindows -match "Microsoft Windows 11 Home") {
    $licenseKey = "TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
    Write-Host "Windows activado correctamente crack!" -ForegroundColor Green
} elseif ($VersiondeWindows -match "Microsoft Windows 10 Pro" -or $VersiondeWindows -match "Microsoft Windows 11 Pro") {
    $licenseKey = "VK7JG-NPHTM-C97JM-9MPGT-3V66T"
    Write-Host "Windows activado correctamente crack!" -ForegroundColor Green
} elseif ($VersiondeWindows -match "Microsoft Windows 10 Enterprise" -or $VersiondeWindows -match "Microsoft Windows 11 Enterprise") {
    $licenseKey = "NPPR9-FWDCX-D2C8J-H872K-2YT43"
    Write-Host "Windows activado correctamente crack!" -ForegroundColor Green
} elseif ($VersiondeWindows -match "Microsoft Windows 10 Education" -or $VersiondeWindows -match "Microsoft Windows 11 Education") {
    $licenseKey = "6TP4R-GNPTD-KYYHQ-7B7DP-J447Y"
    Write-Host "Windows activado correctamente crack!" -ForegroundColor Green
} else {
    Write-Host "Versión de Windows no reconocida."
    exit
}

$comando = "slmgr.vbs /ipk $licenseKey"
Invoke-Expression -Command $comando
