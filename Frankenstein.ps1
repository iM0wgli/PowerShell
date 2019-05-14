# Author: Bunty Saini (iM0wgli)
Clear-Host
#The next line install Chocolatey
#Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))`
#The next line accepts EULA and confirms Yes to all
#choco feature enable -n=allowGlobalConfirmation
""
""
""
Write-Host "###########################"
Write-Host "### Frankenstein Script ###"
Write-Host "###########################"
#Adding Double Quotes will leave a blank line
""
Write-Host "1. Install/Enable Application/Feature"
Write-Host "2. Uninstall Application/Feature"
Write-Host "3. Update Application"
""
$S=Read-Host "Enter Selection"
if ($S -eq 1) ##This section is for Installation
        {""
            Write-Host "Select Application/Feature to Install/Enable"
        ""
        Write-Host "1. Adobe Reader"
        Write-Host "2. Google Chrome"
        Write-Host "3. Enable and Create Restore Point"
        Write-Host "4. Dymo Label"
        Write-Host "5. ScanSnap Manager"
        Write-Host "6. HP Universal Print Driver for Windows PCL"
        Write-Host "7. Citrix Receiver"
        Write-Host "8. JDK (Java Development Kit - Java SE)"
        Write-Host "9. Windows Server Backup Feature"
        ""
        Write-Host ". Main Menu"
        ""
        $S1=Read-Host "Enter Selection"
        if ($S1 -eq 1)  {
        choco install AdobeReader            
        }
        elseif ($S1 -eq 2) {
        choco install googlechrome
        }
        elseif ($S1 -eq 3) {
            Enable-ComputerRestore -Drive "C:\" -verbose
            cmd.exe /c "Wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Manual Restore Point", 100, 12"
        }
        elseif ($S1 -eq 4) {
            choco install dymo-label
        }
        elseif ($S1 -eq 5) {
            choco install scansnapmanager
        }
        elseif ($S1 -eq 6) {
            choco install hp-universal-print-driver-pcl
        }
        elseif ($S1 -eq 7) {
            choco install citrix-receiver
        }
        elseif ($S1 -eq 8) {
            choco install jdk8
        }
        elseif ($S1 -eq 9) {
            Import-Module Servermanager
            Install-WindowsFeature Windows-Server-Backup
            #The next line confirms if the feature is installed
            #Get-WindowsFeature | where {$_.Name -eq "Windows-Server-Backup"}      
        }
}
elseif ($S -eq 2) ##This section is for Uninstallation
{""
Write-Host "1. Adobe Reader"
Write-Host "2. Google Chrome"
Write-Host "3. Dymo Label"
Write-Host "4. ScanSnap Manager"
Write-Host "5. HP Universal Print Driver for Windows PCL"
Write-Host "6. Citrix Receiver"
Write-Host "7. JDK (Java Development Kit - Java SE)"
""
Write-Host ". Main Menu"
""
$S2=Read-Host "Enter Selection"
        if ($S2 -eq 1)  {
        choco uninstall AdobeReader            
        }
        elseif ($S2 -eq 2) {
        choco Uninstall googlechrome
        }
        elseif ($S2 -eq 3) {
            choco uninstall dymo-label
        }
        elseif ($S2 -eq 4) {
            choco uninstall scansnapmanager
        }
        elseif ($S2 -eq 5) {
            choco uninstall hp-universal-print-driver-pcl
        }
        elseif ($S2 -eq 6) {
            choco uninstall citrix-receiver
        }
        elseif ($S2 -eq 7) {
            choco uninstall jdk8
        }
}
elseif ($S -eq 3) ##This section is for Update
{""
Write-Host "1. Adobe Reader"
Write-Host "2. Google Chrome"
Write-Host "3. Dymo Label"
Write-Host "4. ScanSnap Manager"
Write-Host "5. HP Universal Print Driver for Windows PCL"
Write-Host "6. Citrix Receiver"
Write-Host "7. JDK (Java Development Kit - Java SE)"
""
Write-Host ". Main Menu"
""
$S3=Read-Host "Enter Selection"
        if ($S3 -eq 1)  {
        choco upgrade AdobeReader            
        }
        elseif ($S3 -eq 2) {
        choco upgrade googlechrome
        }
        elseif ($S3 -eq 3) {
            choco upgrade dymo-label
            }
        elseif ($S3 -eq 4) {
                choco upgrade scansnapmanager
                }
        elseif ($S3 -eq 5) {
                choco upgrade hp-universal-print-driver-pcl
                    }
        elseif ($S3 -eq 6) {
                choco upgrade citrix-receiver
                            }
        elseif ($S2 -eq 7) {
                choco upgrade jdk8
                            }
    }
else {
    Write-Host "Wrong Choice"
}