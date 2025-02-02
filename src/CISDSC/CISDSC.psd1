@{

# Script module or binary module file associated with this manifest.
RootModule = 'CISDSC.psm1'

# Version number of this module.
ModuleVersion = '2.4.0'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '8097398b-e4d1-43bc-9bb3-52bb54858b7a'

# Author of this module
Author = 'Cybersecurity Engineering'

# Company or vendor of this module
CompanyName = 'The University of Illinois'

# Copyright statement for this module
Copyright = 'The University of Illinois Board of Trustees'

# Description of the functionality provided by this module
Description = 'DSC resources for applying CIS benchmarks.'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(
    @{ModuleName='AuditPolicyDsc'; ModuleVersion='1.4.0.0'; GUID='644501e3-ebc7-451e-9155-366a4f8d4a9a'},
    @{ModuleName='SecurityPolicyDsc'; ModuleVersion='2.10.0.0'; GUID='e2b73194-69ef-4fa6-b949-9f62ebe04989'}
)

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
# FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
# CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
# AliasesToExport = @()

# DSC resources to export from this module
DscResourcesToExport = @(
    'CISService',
    'CIS_Microsoft_Edge_Windows',
    'CIS_Microsoft_Windows_10_Enterprise_Release_1809',
    'CIS_Microsoft_Windows_10_Enterprise_Release_1909',
    'CIS_Microsoft_Windows_10_Enterprise_Release_2004',
    'CIS_Microsoft_Windows_10_Enterprise_Release_20H2',
    'CIS_Microsoft_Windows_Server_2016_Member_Server_Release_1607',
    'CIS_Microsoft_Windows_Server_2019_Member_Server_Release_1809',
    'CIS_Microsoft_Windows_Server_2019_Member_Server_Release_20H2'
)

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('DSC','CIS','benchmark','benchmarks','security')

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/blob/main/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/techservicesillinois/SecOps-Powershell-CISDSC'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = 'https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/blob/main/CHANGELOG.md'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
