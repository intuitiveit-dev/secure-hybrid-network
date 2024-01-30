connect-azaccount -identity
$firewall = Get-AzFirewall -Name "AzureFirewall" -ResourceGroupName "NU-FWIIS-STAGING"
$vnet = Get-AzVirtualNetwork -Name "vnet-hub" -ResourceGroupName "NU-FWIIS-STAGING"
$publicip = Get-AzPublicIpAddress -Name "pip-firewall" -ResourceGroupName "NU-FWIIS-STAGING"
$firewall.Deallocate()
$firewall | Set-AzFirewall