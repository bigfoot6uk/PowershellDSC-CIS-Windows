15 errors found. The bellow blocks where not able to be automatically matched to a Recommendation in '.\src\CISDSC\dscresources\RecommendationErrors.ps1'.

    #appears to be an incorrect duplicate of 2.3.7.2, the GPO has both this and 'DontDisplayLastUserName' which appears to be correct
    #https://getadmx.com/?Category=NovellClient&Policy=Novell.Client.Windows.adm::LastLoggedOnUser
    if($ExcludeList -notcontains '' -and $){
        Registry ""
        {
           ValueName = 'DontDisplayUserName'
           ValueType = 'Dword'
           Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
           ValueData = 1
        }
    }
    #appears to be an old way to set 1.1.2, needs verified.
    if($ExcludeList -notcontains '' -and $){
        Registry " (2)"
        {
           ValueName = 'MaximumPasswordAge'
           ValueType = 'Dword'
           Key = 'HKLM:\System\CurrentControlSet\Services\Netlogon\Parameters'
           ValueData = 30
        }
    }
    #this service does not appear in the benchmark as far as I can tell.
    if($ExcludeList -notcontains '' -and $){
        Service " (3)"
        {
           Name = 'RasMan'
           State = 'Stopped'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        AuditPolicySubcategory " (4)"
        {
           Name = 'Computer Account Management'
           Ensure = 'Present'
           AuditFlag = 'Success'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        AuditPolicySubcategory " (5)"
        {
           Name = 'Computer Account Management'
           Ensure = 'Present'
           AuditFlag = 'Failure'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        AuditPolicySubcategory " (6)"
        {
           Name = 'Logoff'
           Ensure = 'Present'
           AuditFlag = 'Success'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        AuditPolicySubcategory " (7)"
        {
           Name = 'Logoff'
           Ensure = 'Present'
           AuditFlag = 'Failure'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (8)"
        {
           ValueName = ''
           Ensure = 'Absent'
           Key = 'HKLM:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs'
        }
    }
    #Mike is looking into these. Looks like potential encoding errors with the conversion tool.
    if($ExcludeList -notcontains '' -and $){
        Registry " (9)"
        {
           ValueName = 'PauseFeatureUpdatesStartTime'
           ValueData = ' '
           Ensure = 'Present'
           ValueType = 'String'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (10)"
        {
           ValueName = 'PauseQualityUpdatesStartTime'
           ValueData = ' '
           Ensure = 'Present'
           ValueType = 'String'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (11)"
        {
           ValueName = 'PolicyVersion'
           ValueData = 541
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (12)"
        {
           ValueName = 'AppHVSIClipboardFileType'
           ValueData = 1
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\AppHVSI'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (13)"
        {
           ValueName = 'FileTrustOriginRemovableMedia'
           ValueData = 1
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\AppHVSI\FileTrustOrigin'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (14)"
        {
           ValueName = 'FileTrustOriginNetworkShare'
           ValueData = 0
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\AppHVSI\FileTrustOrigin'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (15)"
        {
           ValueName = 'FileTrustOriginMarkOfTheWeb'
           ValueData = 1
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\AppHVSI\FileTrustOrigin'
        }
    }
