38 errors found. The bellow blocks where not able to be automatically matched to a Recommendation in 'C:\Repos\SecOps-Powershell-CISDSC\src\CISDSC\dscresources\RecommendationErrors.ps1'.

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
        Registry " (6)"
        {
           ValueName = ''
           Ensure = 'Absent'
           Key = 'HKLM:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (7)"
        {
           ValueName = '\\*\NETLOGON'
           ValueData = 'RequireMutualAuthentication=1, RequireIntegrity=1'
           Ensure = 'Present'
           ValueType = 'String'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkProvider\HardenedPaths'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (8)"
        {
           ValueName = '\\*\SYSVOL'
           ValueData = 'RequireMutualAuthentication=1, RequireIntegrity=1'
           Ensure = 'Present'
           ValueType = 'String'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkProvider\HardenedPaths'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (10)"
        {
           ValueName = 'OutputDirectory'
           Ensure = 'Absent'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\Transcription'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (11)"
        {
           ValueName = 'EnableInvocationHeader'
           Ensure = 'Absent'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\Transcription'
        }
    }
    #Mike is looking into these. Looks like potential encoding errors with the conversion tool.
    if($ExcludeList -notcontains '' -and $){
        Registry " (12)"
        {
           ValueName = 'PauseFeatureUpdatesStartTime'
           ValueData = ' '
           Ensure = 'Present'
           ValueType = 'String'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (13)"
        {
           ValueName = 'PauseQualityUpdatesStartTime'
           ValueData = ' '
           Ensure = 'Present'
           ValueType = 'String'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (14)"
        {
           ValueName = 'AUOptions'
           ValueData = 3
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (15)"
        {
           ValueName = 'AutomaticMaintenanceEnabled'
           Ensure = 'Absent'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (16)"
        {
           ValueName = 'ScheduledInstallTime'
           ValueData = 1
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (17)"
        {
           ValueName = 'ScheduledInstallEveryWeek'
           ValueData = 1
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (18)"
        {
           ValueName = 'ScheduledInstallFirstWeek'
           Ensure = 'Absent'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (19)"
        {
           ValueName = 'ScheduledInstallSecondWeek'
           Ensure = 'Absent'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (20)"
        {
           ValueName = 'ScheduledInstallThirdWeek'
           Ensure = 'Absent'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (21)"
        {
           ValueName = 'ScheduledInstallFourthWeek'
           Ensure = 'Absent'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (22)"
        {
           ValueName = 'AllowMUUpdateService'
           Ensure = 'Absent'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (23)"
        {
           ValueName = 'fAllowFullControl'
           Ensure = 'Absent'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (24)"
        {
           ValueName = 'MaxTicketExpiry'
           Ensure = 'Absent'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (25)"
        {
           ValueName = 'MaxTicketExpiryUnits'
           Ensure = 'Absent'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (26)"
        {
           ValueName = 'fUseMailto'
           Ensure = 'Absent'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (27)"
        {
           ValueName = 'fAllowUnsolicitedFullControl'
           Ensure = 'Absent'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (28)"
        {
           ValueName = ''
           Ensure = 'Absent'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\RAUnsolicit'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (29)"
        {
           ValueName = 'PolicyVersion'
           ValueData = 541
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (30)"
        {
           ValueName = 'MaxWCNDeviceNumber'
           Ensure = 'Absent'
           Key = 'HKLM:\Software\Policies\Microsoft\Windows\WCN\Registrars'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (31)"
        {
           ValueName = 'HigherPrecedenceRegistrar'
           Ensure = 'Absent'
           Key = 'HKLM:\Software\Policies\Microsoft\Windows\WCN\Registrars'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (32)"
        {
           ValueName = 'IPv4Filter'
           Ensure = 'Absent'
           Key = 'HKLM:\Software\Policies\Microsoft\Windows\WinRM\Service'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (33)"
        {
           ValueName = 'IPv6Filter'
           Ensure = 'Absent'
           Key = 'HKLM:\Software\Policies\Microsoft\Windows\WinRM\Service'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (34)"
        {
           ValueName = 'DisabledComponents'
           ValueData = 255
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (35)"
        {
           ValueName = 'AppHVSIClipboardFileType'
           ValueData = 1
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\AppHVSI'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (36)"
        {
           ValueName = 'FileTrustOriginRemovableMedia'
           ValueData = 1
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\AppHVSI\FileTrustOrigin'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (37)"
        {
           ValueName = 'FileTrustOriginNetworkShare'
           ValueData = 0
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\AppHVSI\FileTrustOrigin'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (38)"
        {
           ValueName = 'FileTrustOriginMarkOfTheWeb'
           ValueData = 1
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\AppHVSI\FileTrustOrigin'
        }
    }
