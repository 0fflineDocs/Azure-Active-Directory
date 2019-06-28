# Save current StrongAuthenticationMethods 
$Methods= (Get-MsolUser-UserPrincipalName<UPN>).StrongAuthenticationMethods 
  
# Disable MFA by setting the StrongAuthenticationRequirements to an empty array 
# This will also remove the StrongAuthenticationMethods 
Set-MsolUser-UserPrincipalName<UPN>-StrongAuthenticationRequirements @() 
  
# Restore the StrongAuthenticationMethods value that was saved 
Set-MsolUser-UserPrincipalName<UPN>-StrongAuthenticationMethods$Methods 
