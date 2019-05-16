$AzFWSnName = "AzureFirewallSubnet"
$functionCode = "EXT"
$environmentCode = "PRD"
$productLineCode = "LM"
$customerCode = "BP"
$appgwname = "appgway1"


$ip = "192.168.16.0/22"

$oct1,$oct2,$oct3,$oct4 = $ip.Split('.')
$oct4,$net = $oct4.Split('/')
Write-Host "$oct1   $oct2   $oct3  $oct4   $net"

$Subnet1SVNET = "$oct1.$oct2.$oct3.0/24"
$Subnet2Firewall = "$oct1.$oct2.$oct3.0/26"
$Subnet3MGMT = "$oct1.$oct2.$oct3.64/28"
$Subnet4SS = "$oct1.$oct2.$oct3.80/28"
$Subnet5appGateway  = "$oct1.$oct2.$oct3.96/28"
$appgwIPAddress = "$oct1.$oct2.$oct3.101"

write-host "Variable Setup"

Write-Output "##vso[task.setvariable variable=AzureFirewallSubnetName;isSecret=false]$AzFWSnName"
Write-Output "##vso[task.setvariable variable=functionCode;isSecret=false]$functionCode"
Write-Output "##vso[task.setvariable variable=environmentCode;isSecret=false]$environmentCode"
Write-Output "##vso[task.setvariable variable=productLineCode;isSecret=false]$productLineCode"
Write-Output "##vso[task.setvariable variable=customerCode;isSecret=false]$customerCode"

Write-Output "##vso[task.setvariable variable=privateIPAddress;isSecret=false]$appgwIPAddress"

write-Output "##vso[task.setvariable variable=Subnet1SVNET;isSecret=false]$Subnet1SVNET"
write-Output "##vso[task.setvariable variable=Subnet2Firewall;isSecret=false]$Subnet2Firewall"
write-Output "##vso[task.setvariable variable=Subnet3MGMT;isSecret=false]$Subnet3MGMT"
write-Output "##vso[task.setvariable variable=Subnet4SS;isSecret=false]$Subnet4SS"
write-Output "##vso[task.setvariable variable=Subnet5appGateway;isSecret=false]$Subnet5appGateway"