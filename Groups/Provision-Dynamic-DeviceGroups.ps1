$Autpilot = "All Autopilot Devices"
$AllAutoPilotDevices = (AzureADPreview\New-AzureADMSGroup -Description $Autpilot -DisplayName $Autpilot -mailEnabled 0 -mailnickname 0 -securityEnabled 1 -Verbose).id
AzureADPreview\Set-AzureADMSGroup -id $AllAutoPilotDevices -GroupTypes "DynamicMembership" -MembershipRule '(device.devicePhysicalIDs -any _ -contains "[ZTDId]")' -MembershipRuleProcessingState "On" -Verbose

$Windows = "All Windows Devices"
$AllWindowsDevices = (AzureADPreview\New-AzureADMSGroup -Description $Windows -DisplayName $Windows -mailEnabled 0 -mailnickname 0 -securityEnabled 1 -Verbose).id
AzureADPreview\Set-AzureADMSGroup -id $AllWindowsDevices -GroupTypes "DynamicMembership" -MembershipRule '(device.deviceOSType -contains "Windows")' -MembershipRuleProcessingState "On" -Verbose

$CorporateWindows = "All Corporate Windows Devices"
$AllCorporateWindowsDevices = (AzureADPreview\New-AzureADMSGroup -Description $CorporateWindows -DisplayName $CorporateWindows -mailEnabled 0 -mailnickname 0 -securityEnabled 1 -Verbose).id
AzureADPreview\Set-AzureADMSGroup -id $AllCorporateWindowsDevices -GroupTypes "DynamicMembership" -MembershipRule '(device.deviceOSType -contains "Windows") and (device.deviceOwnership -eq "Company")' -MembershipRuleProcessingState "On" -Verbose

$PersonalWindows = "All Personal Windows Devices"
$AllPersonalWindowsDevices = (AzureADPreview\New-AzureADMSGroup -Description $PersonalWindows -DisplayName $PersonalWindows -mailEnabled 0 -mailnickname 0 -securityEnabled 1 -Verbose).id
AzureADPreview\Set-AzureADMSGroup -id $AllPersonalWindowsDevices -GroupTypes "DynamicMembership" -MembershipRule '(device.deviceOSType -contains "Windows") and (device.deviceOwnership -eq "Personal")' -MembershipRuleProcessingState "On" -Verbose

$Windows20H2 = "All Corporate Windows 10 20H2"
$AllWindows20H2Devices = (AzureADPreview\New-AzureADMSGroup -Description $Windows20H2 -DisplayName $Windows20H2 -mailEnabled 0 -mailnickname 0 -securityEnabled 1 -Verbose).id
AzureADPreview\Set-AzureADMSGroup -id $AllWindows20H2Devices -GroupTypes "DynamicMembership" -MembershipRule '(device.deviceOSVersion -startsWith "19042.804") and (device.deviceOwnership -eq "Company")' -MembershipRuleProcessingState "On" -Verbose

$Windows2004 = "All Corporate Windows 10 2004"
$AllWindows2004Devices = (AzureADPreview\New-AzureADMSGroup -Description $Windows2004 -DisplayName $Windows2004 -mailEnabled 0 -mailnickname 0 -securityEnabled 1 -Verbose).id
AzureADPreview\Set-AzureADMSGroup -id $AllWindows2004Devices -GroupTypes "DynamicMembership" -MembershipRule '(device.deviceOSVersion -Startswith "19041.804") and (device.deviceOwnership -eq "Company")' -MembershipRuleProcessingState "On" -Verbose

$Windows1909 = "All Corporate Windows 10 1909"
$AllWindows1909Devices = (AzureADPreview\New-AzureADMSGroup -Description $Windows1909 -DisplayName $Windows1909 -mailEnabled 0 -mailnickname 0 -securityEnabled 1 -Verbose).id
AzureADPreview\Set-AzureADMSGroup -id $AllWindows1909Devices -GroupTypes "DynamicMembership" -MembershipRule '(device.deviceOSVersion -startswith " 18363.1379") and (device.deviceOwnership -eq "Company")' -MembershipRuleProcessingState "On" -Verbose

$iOS = "All Corporate iOS Devices"
$AlliOSDevices = (AzureADPreview\New-AzureADMSGroup -Description $iOS -DisplayName $iOS -mailEnabled 0 -mailnickname 0 -securityEnabled 1 -Verbose).id
AzureADPreview\Set-AzureADMSGroup -id $AlliOSDevices -GroupTypes "DynamicMembership" -MembershipRule '(device.deviceOSType -eq "iPad") -or (device.deviceOSType -eq "iPhone") and (device.deviceOwnership -eq "Company")' -MembershipRuleProcessingState "On" -Verbose

$MacOS = "All Corporate MacOS Devices"
$AllMacOSDevices = (AzureADPreview\New-AzureADMSGroup -Description $MacOS -DisplayName $MacOS -mailEnabled 0 -mailnickname 0 -securityEnabled 1 -Verbose).id
AzureADPreview\Set-AzureADMSGroup -id $AllMacOSDevices -GroupTypes "DynamicMembership" -MembershipRule '(device.deviceOSType -eq "MacOS") and (device.deviceOwnership -eq "Company")' -MembershipRuleProcessingState "On" -Verbose

$COPEWPAndroid = "All COPE Work Profile Android Enterprise"
$AllCOPEWPAndroidDevices = (AzureADPreview\New-AzureADMSGroup -Description $COPEWPAndroid -DisplayName $COPEWPAndroid -mailEnabled 0 -mailnickname 0 -securityEnabled 1 -Verbose).id
AzureADPreview\Set-AzureADMSGroup -id $AllCOPEWPAndroidDevices -GroupTypes "DynamicMembership" -MembershipRule '(device.enrollmentProfileName -eq "COPE Work Profile Android Enterprise")' -MembershipRuleProcessingState "On" -Verbose

$PersonallyOwnedAndroid = "All Personally-owned Android devices with work profile"
$AllPersonallyOwnedAndroidDevices = (AzureADPreview\New-AzureADMSGroup -Description $PersonallyOwnedAndroid -DisplayName $PersonallyOwnedAndroid -mailEnabled 0 -mailnickname 0 -securityEnabled 1 -Verbose).id
AzureADPreview\Set-AzureADMSGroup -id $AllPersonallyOwnedAndroidDevices -GroupTypes "DynamicMembership" -MembershipRule '(device.deviceOSType -eq "AndroidForWork") and (device.managementType -eq "MDM")' -MembershipRuleProcessingState "On" -Verbose

$FullyManagedAndroid = "All Fully Managed Android Enterprise Devices"
$AllFullyManagedAndroidDevices = (AzureADPreview\New-AzureADMSGroup -Description $FullyManagedAndroid -DisplayName $FullyManagedAndroid-mailEnabled 0 -mailnickname 0 -securityEnabled 1 -Verbose).id
AzureADPreview\Set-AzureADMSGroup -id $AllFullyManagedAndroidDevices -GroupTypes "DynamicMembership" -MembershipRule '(device.deviceOSType -eq "AndroidEnterprise") -and (device.enrollmentProfileName -eq null)' -MembershipRuleProcessingState "On" -Verbose
