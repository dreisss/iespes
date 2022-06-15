# 1. Open Admin Powershell.
# 2. Run the command:
#   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
# 3. Run: ./afterInstall.ps1

#Requires -RunAsAdministrator

# <--> <--> Funtions <--> <-->

# Utilities
function formatNumber {
  param ( [string]$number )

  if ($number.Length -lt 2) { return "0$number" }
  return $number
}

# Main Functions
function setNetworkConfigs {
  param ( [hashtable]$settings )

  Write-Host "Changing network configs..." -ForegroundColor Green
  New-NetIPAddress -InterfaceAlias "Ethernet" -AddressFamily "ipv4" -IPAddress "$($settings.addressIPV4)" -PrefixLength 24 -DefaultGateway "$($settings.defaultGateway)"
  Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses ("$($settings.primaryDNS)", "$($settings.secondaryDNS)")
}

function setComputerName {
  param ( [hashtable]$settings )

  Write-Host "Renaming computer..." -ForegroundColor Green
  Rename-Computer -NewName "$($settings.computerName)"
}

function createDefaultUser {
  param ( [hashtable]$settings )

  Write-Host "Creating default user..." -ForegroundColor Green
  New-LocalUser -Name "$($settings.defaultUserName)" -NoPassword -UserMayNotChangePassword -AccountNeverExpires
  Add-LocalGroupMember -SID "S-1-5-32-545" -Member "$($settings.defaultUserName)"
}

function runScript {
  param( [hashtable]$settings )

  if ($settings.runScript -eq $true) {
    Write-Host "Running script..." -ForegroundColor Green
    Start-Process -FilePath "./optimize.bat" -NoNewWindow
  }
  else {
    Write-Host "Skipping script..." -ForegroundColor Green
  }
}

# <--> <--> Running <--> <-->

# Saving data
$primitives = @{
  labinNumber    = Read-Host "Labin number"
  computerNumber = Read-Host "Computer number"
}

$configs = [ordered]@{
  general  = @{
    computerName        = "LABIN$(formatNumber($primitives.labinNumber))-PC$(formatNumber($primitives.computerNumber))"
    defaultUserName     = "Aluno"
    defaultUserPassword = ""
  }

  network  = [ordered]@{
    addressIPV4    = "192.168.$($primitives.labinNumber).$([int]$primitives.computerNumber + 1)"
    defaultGateway = "192.168.$($primitives.labinNumber).1"
    primaryDNS     = "8.8.8.8"
    secondaryDNS   = "8.8.4.4"
  }

  optimize = [ordered]@{
    runScript = $true
  }
}

# Running
Write-Host "Default Configurations:" -ForegroundColor Green
$configs.general
$configs.network
$configs.optimize

Write-Host "Press any key to continue." -ForegroundColor Green
[Console]::ReadKey()

setNetworkConfigs($configs.network)
setComputerName($configs.general)
createDefaultUser($configs.general)
runScript($configs.optimize)
