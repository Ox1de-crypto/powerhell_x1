clear

$CurrentUser = [Environment]::UserName

$Ox1deFilePath = "C:\Users\$CurrentUser\Documents\WindowsPowerShell\Ox1de.ps1"
$FreememFilePath = "C:\Users\$CurrentUser\Documents\WindowsPowerShell\freemem.ps1"
$OhMyPoshConfigPath = "C:\Users\$CurrentUser\AppData\Local\Programs\oh-my-posh\themes\negligible.omp.json" #winget

#https://github.com/kiedtl/Meow
if (Test-Path $Ox1deFilePath) {
    . $Ox1deFilePath | meow
}

if (Test-Path $FreememFilePath) {
    . $FreememFilePath
}

if (Test-Path $OhMyPoshConfigPath) {
    oh-my-posh --init --shell pwsh --config $OhMyPoshConfigPath | Invoke-Expression
}

#https://www.powershellgallery.com/packages/Terminal-Icons/0.10.0
Import-Module -Name Terminal-Icons 
