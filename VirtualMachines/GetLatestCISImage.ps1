$locName = "centralus"
$pubName = "center-for-internet-security-inc"
$offerName = "cis-ubuntu-linux-1804-l1"
$skuName = "cis-ubuntu1804-l1"

#Get a list of all publishers
#Get-AzVMImagePublisher -Location $location |Select PublisherName

#Based on selected publisher, get a list of Image offers
#Get-AzVMImageOffer -Location $locName -PublisherName $pubName | Select Offer

#Based on selected image offer, get Image Skus
#Get-AzVMImageSku -Location $locName -PublisherName $pubName -Offer $offerName | Select Skus

$latestVersion = Get-AzVMImage -Location $locName -PublisherName $pubName -Offer $offerName -Skus $skuName `
 | Select -Property Version | ForEach-Object {$_.Version} | measure -Maximum

"Latest version available: " + $latestVersion.Maximum