################################################
# Assumes you are already authenticated 
# to a specific subscription.
################################################

# get all resource groups in the subscription
$rsgList = Get-AzResourceGroup

foreach($resouceGroup in $rsgList)
{
    Write-Host $resouceGroup.ResourceGroupName
}