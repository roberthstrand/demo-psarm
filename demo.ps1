##
# Introduction to PSArm
##

# Installing the module
Install-Module -Name PSArm -AllowPrerelease

# Create ARM template, by using the PSArm script
Publish-PSArmTemplate -Path .\storageaccount\create.psarm.ps1 -Parameters @{
    storageAccountName = 'bigstoragersdemo'
    location = 'westeurope'
} -OutFile ./storageaccount/new.json -Force

# Deploy ARM template
New-AzResourceGroupDeployment -ResourceGroupName demo -TemplateFile ./storageaccount/new.json