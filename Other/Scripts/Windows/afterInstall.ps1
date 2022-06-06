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

  Write-Host "Changing Network Configs..." -ForegroundColor Green
  New-NetIPAddress -InterfaceAlias "Ethernet" -AddressFamily "ipv4" -IPAddress "$($settings.addressIPV4)" -PrefixLength 24 -DefaultGateway "$($settings.defaultGateway)"
  Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses ("$($settings.primaryDNS)", "$($settings.secondaryDNS)") -PassThru
}

function setComputerName {
  param ( [hashtable]$settings )

  Write-Host "Renaming Computer..." -ForegroundColor Green
  Rename-Computer -NewName "$($settings.computerName)" -PassThru
}

function createDefaultUser {
  param ( [hashtable]$settings )

  Write-Host "Creating default User..." -ForegroundColor Green
  New-LocalUser -Name "$($settings.defaultUserName)" -NoPassword -UserMayNotChangePassword -AccountNeverExpires
  # Add-LocalGroupMember -Group "$()" -Member "$($settings.defaultUserName)"
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

Write-Host "Default Configurations:" -ForegroundColor Green
$configs.general
$configs.network
$configs.optimize

Write-Host "Press any key to continue." -ForegroundColor Green
[Console]::ReadKey()


createDefaultUser($configs.general)
