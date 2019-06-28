#Identify users who have registered for MFA
Get-MsolUser -All | where {$_.StrongAuthenticationMethods -ne $null} | Select-Object -Property UserPrincipalName

#Identify all users registered for MFA with their chosen methods displayed
$MFAllUsers = (Get-MsolUser -All | Where {$_.UserPrincipalName} | Select UserPrincipalName, DisplayName, @{n="MFA"; e={$_.StrongAuthenticationRequirements.State}}, @{n="Methods"; e={($_.StrongAuthenticationMethods).MethodType}}, @{n="Default Method"; e={($_.StrongAuthenticationMethods).IsDefault}}) | Out-GridView
