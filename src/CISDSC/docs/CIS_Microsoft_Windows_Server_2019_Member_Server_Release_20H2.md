---
date: 4/20/2021
keywords: dsc,powershell,configuration,setup,cis,security,20H2
title: CIS_Microsoft_Windows_Server_2019_Member_Server_Release_20H2
---
# DSC CIS_Microsoft_Windows_Server_2019_Member_Server_Release_20H2 Resource

> Applies To: Windows PowerShell 5.1 and higher

The **CIS_Microsoft_Windows_Server_2019_Member_Server_Release_20H2** resource in Windows PowerShell Desired State Configuration (DSC) provides a
mechanism to apply CIS benchmarks on a target node running Microsoft Windows Server 2019 Member Server release 20H2.

## Syntax

```Syntax
CIS_Microsoft_Windows_Server_2019_Member_Server_Release_20H2 [String] #ResourceName
{
    [ ExcludeList = [String[]] ]
    [ LevelOne = [Boolean] ]
    [ LevelTwo = [Boolean] ]
    [ NextGenerationWindowsSecurity = [Boolean] ]
    [ cis112MaximumPasswordAge = [Int32] { 1-60 } ]
    [ cis113MinimumPasswordAge = [Int32] { 1-998 } ]
    [ cis121Accountlockoutduration = [Int32] { 15-99999 } ]
    [ cis122Accountlockoutthreshold = [Int32] { 10-999 } ]
    [ cis123Resetaccountlockoutcounterafter = [Int32] { 15-99999 } ]
    [ cis1825PasswordLength = [Int32] { 15-64 } ]
    [ cis1826PasswordAgeDays = [Int32] { 30-365 } ]
    [ cis18412WarningLevel = [Int32] { 0-90 } ]
    [ cis1849ScreenSaverGracePeriod = [String] { '0' | '1' | '2' | '3' | '4' | '5' } ]
    [ cis18910212DeferFeatureUpdatesPeriodInDays = [Int32] { 180-365 } ]
    [ cis1892612MaxSize = [Int32] { 32768-2147483647 } ]
    [ cis1892622MaxSize = [Int32] { 196608-2147483647 } ]
    [ cis1892632MaxSize = [Int32] { 32768-2147483647 } ]
    [ cis1892642MaxSize = [Int32] { 32768-2147483647 } ]
    [ cis189623101MaxIdleTime = [Int32] ]
    [ cis2315AccountsRenameadministratoraccount = [String] { 1-256 } ]
    [ cis2316AccountsRenameguestaccount = [String] { 1-256 } ]
    [ cis2365MaximumPasswordAge = [Int32] { 1-30 } ]
    [ cis2373InactivityTimeoutSecs = [Int32] { 1-900 } ]
    [ cis2374LegalNoticeText = [String] { 1-2048 } ]
    [ cis2375LegalNoticeCaption = [String] { 1-512 } ]
    [ cis2376CachedLogonsCount = [String] { '0' | '1' | '2' | '3' | '4' } ]
    [ cis2391AutoDisconnect = [Int32] { 1-15 } ]
    [ cis916LogFileSize = [Int32] { 16384-2147483647 } ]
    [ cis926LogFileSize = [Int32] { 16384-2147483647 } ]
    [ cis938LogFileSize = [Int32] { 16384-2147483647 } ]
    [ DependsOn = [String[]] ]
    [ PsDscRunAsCredential = [PSCredential] ]
}
```
> [!NOTE]
> `[String]` parameters with a number range specifies valid lengths.

> [!NOTE]
> The following parameters are mandatory if not added to the ExcludeList. This is because these values will always be organization specific so a default value is not appropriate.
> `2315AccountsRenameadministratoraccount`,
> `2316AccountsRenameguestaccount`,
> `2375LegalNoticeCaption`,
> `2374LegalNoticeText`
## Properties

|Property |DefaultValue | Recommendation ID|Recommendation
|---|---|---|---|
|ExcludeList | | |Excludes the provided recommendation IDs from the configuration |
|LevelOne |`$true` | |Applies level one recommendations |
|LevelTwo |`$false` | |Applies level two recommendations. Does not include level one, both must be set to `$true`. |
|NextGenerationWindowsSecurity |`$false` | |Applies Next Generation Windows Security recommendations |
|cis112MaximumPasswordAge |60 |1.1.2 |(L1) Ensure 'Maximum password age' is set to '60 or fewer days, but not 0' |
|cis113MinimumPasswordAge |30 |1.1.3 |(L1) Ensure 'Minimum password age' is set to '1 or more day(s)' |
|cis121Accountlockoutduration |15 |1.2.1 |(L1) Ensure 'Account lockout duration' is set to '15 or more minute(s)' |
|cis122Accountlockoutthreshold |10 |1.2.2 |(L1) Ensure 'Account lockout threshold' is set to '10 or fewer invalid logon attempt(s), but not 0' |
|cis123Resetaccountlockoutcounterafter |15 |1.2.3 |(L1) Ensure 'Reset account lockout counter after' is set to '15 or more minute(s)' |
|cis1825PasswordLength |15 |18.2.5 |(L1) Ensure 'Password Settings: Password Length' is set to 'Enabled: 15 or more' (MS only) |
|cis1826PasswordAgeDays |30 |18.2.6 |(L1) Ensure 'Password Settings: Password Age (Days)' is set to 'Enabled: 30 or fewer' (MS only) |
|cis18412WarningLevel |90 |18.4.12 |(L1) Ensure 'MSS: (WarningLevel) Percentage threshold for the security event log at which the system will generate a warning' is set to 'Enabled: 90% or less' |
|cis1849ScreenSaverGracePeriod |'0' |18.4.9 |(L1) Ensure 'MSS: (ScreenSaverGracePeriod) The time in seconds before the screen saver grace period expires (0 recommended)' is set to 'Enabled: 5 or fewer seconds' |
|cis18910212DeferFeatureUpdatesPeriodInDays |180 |18.9.102.1.2 |(L1) Ensure 'Select when Preview Builds and Feature Updates are received' is set to 'Enabled: Semi-Annual Channel, 180 or more days' |
|cis1892612MaxSize |32768 |18.9.26.1.2 |(L1) Ensure 'Application: Specify the maximum log file size (KB)' is set to 'Enabled: 32,768 or greater' |
|cis1892622MaxSize |196608 |18.9.26.2.2 |(L1) Ensure 'Security: Specify the maximum log file size (KB)' is set to 'Enabled: 196,608 or greater' |
|cis1892632MaxSize |32768 |18.9.26.3.2 |(L1) Ensure 'Setup: Specify the maximum log file size (KB)' is set to 'Enabled: 32,768 or greater' |
|cis1892642MaxSize |32768 |18.9.26.4.2 |(L1) Ensure 'System: Specify the maximum log file size (KB)' is set to 'Enabled: 32,768 or greater' |
|cis189623101MaxIdleTime |900000 |18.9.62.3.10.1 |(L2) Ensure 'Set time limit for active but idle Remote Desktop Services sessions' is set to 'Enabled: 15 minutes or less, but not Never (0)' |
|cis2315AccountsRenameadministratoraccount | |2.3.1.5 |(L1) Configure 'Accounts: Rename administrator account' |
|cis2316AccountsRenameguestaccount | |2.3.1.6 |(L1) Configure 'Accounts: Rename guest account' |
|cis2365MaximumPasswordAge |30 |2.3.6.5 |(L1) Ensure 'Domain member: Maximum machine account password age' is set to '30 or fewer days, but not 0' |
|cis2373InactivityTimeoutSecs |900 |2.3.7.3 |(L1) Ensure 'Interactive logon: Machine inactivity limit' is set to '900 or fewer second(s), but not 0' |
|cis2374LegalNoticeText | |2.3.7.4 |(L1) Configure 'Interactive logon: Message text for users attempting to log on' |
|cis2375LegalNoticeCaption | |2.3.7.5 |(L1) Configure 'Interactive logon: Message title for users attempting to log on' |
|cis2376CachedLogonsCount |'4' |2.3.7.6 |(L2) Ensure 'Interactive logon: Number of previous logons to cache (in case domain controller is not available)' is set to '4 or fewer logon(s)' (MS only) |
|cis2391AutoDisconnect |15 |2.3.9.1 |(L1) Ensure 'Microsoft network server: Amount of idle time required before suspending session' is set to '15 or fewer minute(s)' |
|cis916LogFileSize |16384 |9.1.6 |(L1) Ensure 'Windows Firewall: Domain: Logging: Size limit (KB)' is set to '16,384 KB or greater' |
|cis926LogFileSize |16384 |9.2.6 |(L1) Ensure 'Windows Firewall: Private: Logging: Size limit (KB)' is set to '16,384 KB or greater' |
|cis938LogFileSize |16384 |9.3.8 |(L1) Ensure 'Windows Firewall: Public: Logging: Size limit (KB)' is set to '16,384 KB or greater' |

## Common properties

|Property |Description |
|---|---|
|DependsOn |Indicates that the configuration of another resource must run before this resource is configured. For example, if the ID of the resource configuration script block that you want to run first is ResourceName and its type is ResourceType, the syntax for using this property is `DependsOn = "[ResourceType]ResourceName"`. |
|PsDscRunAsCredential |Sets the credential for running the entire resource as. |

> [!NOTE]
> The **PsDscRunAsCredential** common property was added in WMF 5.0 to allow running any DSC
> resource in the context of other credentials. For more information, see [Use Credentials with DSC Resources](https://docs.microsoft.com/en-us/powershell/scripting/dsc/configurations/runasuser?view=powershell-7).

## Examples

### Example 1: Apply benchmarks with no exclusions

```powershell
Configuration MyConfiguration
{
    Import-DSCResource -ModuleName 'CISDSC' -Name 'CIS_Microsoft_Windows_Server_2019_Member_Server_Release_20H2'

    CIS_Microsoft_Windows_Server_2019_Member_Server_Release_20H2 'CISBenchmarks'
    {
        cis2315AccountsRenameadministratoraccount = 'CISAdmin'
        cis2316AccountsRenameguestaccount = 'CISGuest'
        cis2375LegalNoticeCaption = 'Legal Notice'
        cis2374LegalNoticeText = @"
This is a super secure device that we don't want bad people using.
I'm even making sure to put this as a literal string so that I can cleanly
use multiple lines to tell you how super secure it is.
"@
    }
}
```

### Example 2: Apply benchmarks with exclusions

```powershell
Configuration MyConfiguration
{
    Import-DSCResource -ModuleName 'CISDSC' -Name 'CIS_Microsoft_Windows_Server_2019_Member_Server_Release_20H2'

    CIS_Microsoft_Windows_Server_2019_Member_Server_Release_20H2 'CISBenchmarks'
    {
        ExcludeList = @(
            '2.3.7.4', # LegalNoticeText
            '2.3.7.5', # LegalNoticeCaption
            '5.6' # IIS Admin Service (IISADMIN)
        )
        cis2315AccountsRenameadministratoraccount = 'CISAdmin'
        cis2316AccountsRenameguestaccount = 'CISGuest'
    }
}
```

### Example 3: Apply benchmarks with a dependency on LAPS
```powershell
Configuration MyConfiguration
{
    Import-DSCResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DSCResource -ModuleName 'CISDSC' -Name 'CIS_Microsoft_Windows_Server_2019_Member_Server_Release_20H2'

    node 'localhost'
    {
        Package 'InstallLAPS'
        {
            Name  = 'Local Administrator Password Solution'
            Path = 'https://download.microsoft.com/download/C/7/A/C7AAD914-A8A6-4904-88A1-29E657445D03/LAPS.x64.msi'
            ProductId = 'EA8CB806-C109-4700-96B4-F1F268E5036C'
        }

        CIS_Microsoft_Windows_Server_2019_Member_Server_Release_20H2 'CISBenchmarks'
        {
            ExcludeList = @(
                '2.3.7.4', # LegalNoticeText
                '2.3.7.5', # LegalNoticeCaption
                '5.6' # IIS Admin Service (IISADMIN)
            )
            cis2315AccountsRenameadministratoraccount = 'CISAdmin'
            cis2316AccountsRenameguestaccount = 'CISGuest'
            DependsOn = '[Package]InstallLAPS'
        }
    }
}
```
