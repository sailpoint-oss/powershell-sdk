$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path

$Manifest = @{
    Path              = (Join-Path $ScriptDir 'PSSailpoint.psd1')

    Author            = 'Sailpoint Developer Relations'
    CompanyName       = 'SailPoint Technologies'
    Description       = 'PSSailpoint - the PowerShell module for IdentityNow'

    ModuleVersion     = '2.1.1'

    RootModule        = 'PSSailpoint.psm1'
    Guid              = '7A197170-97E8-4DCD-A171-271D4AEC2F36' # Must stay static

    PowerShellVersion = '6.2'

    FunctionsToExport = '*'

    VariablesToExport = @()
    AliasesToExport   = @()
    CmdletsToExport   = @()
}

New-ModuleManifest @Manifest
