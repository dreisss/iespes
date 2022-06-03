# 1. Open Admin Powershell.
# 2. Run the command:
#   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
# 3. Run: ./afterInstall.ps1

# Requires -RunAsAdministrator

function formatNumber {
  param ( [string]$number )

  if ($number.Length -lt 2) { return "0$number" }
  return $number
}

# <--> <--> <--> <-->

$primitives = @{
  labinNumber    = Read-Host "Numero do Labin"
  computerNumber = Read-Host "Numero do Computador"
}

$configs = [ordered]@{
  general  = @{
    computerName        = "LABIN$(formatNumber($primitives.labinNumber))-PC$(formatNumber($primitives.computerNumber))"
    defaultUserName     = "Aluno"
    defaultUserPassword = ""
  }

  network  = [ordered]@{
    indexIPV4      = "192.168.$($primitives.labinNumber).$([int]$primitives.computerNumber + 1)"
    defaultGateway = "192.168.$($primitives.labinNumber).1"
    primaryDNS     = "8.8.8.8"
    secondaryDNS   = "8.8.4.4"
  }

  optimize = [ordered]@{
    runScript = $true
  }
}

$configs.general
$configs.network
$configs.optimize

