AzureADPreview\Connect-AzureAD

Get-AzureADGroup -All:$true | % { $_ | Add-Member "Owners" ((Get-AzureADGroupOwner -ObjectId $_.ObjectId).UserPrincipalName -join ";") -PassThru } | sort DisplayName | select DisplayName,ObjectType,Owners,ObjectId | ft
