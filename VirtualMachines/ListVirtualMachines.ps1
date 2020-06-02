$vmList = Get-AzVM

foreach($vm in $vmList)
{
    Write-Host $vm.Name $vm.HardwareProfile.VmSize
}