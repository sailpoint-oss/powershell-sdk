#
# Identity Security Cloud V2025 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2025
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Configuration details for the 'relay' process.

.PARAMETER Version
Version of the 'relay' process.
.PARAMETER Path
Path to the 'relay' process.
.PARAMETER Description
A brief description of the 'relay' process.
.PARAMETER RestartNeeded
Indicates whether the process needs to be restarted.
.OUTPUTS

ClusterManualUpgradeJobsInnerManagedProcessConfigurationRelay<PSCustomObject>
#>

function Initialize-V2025ClusterManualUpgradeJobsInnerManagedProcessConfigurationRelay {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Version},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Path},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${RestartNeeded}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025ClusterManualUpgradeJobsInnerManagedProcessConfigurationRelay' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Version) {
            throw "invalid value for 'Version', 'Version' cannot be null."
        }

        if (!$Path) {
            throw "invalid value for 'Path', 'Path' cannot be null."
        }

        if (!$Description) {
            throw "invalid value for 'Description', 'Description' cannot be null."
        }

        if (!$RestartNeeded) {
            throw "invalid value for 'RestartNeeded', 'RestartNeeded' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "version" = ${Version}
            "path" = ${Path}
            "description" = ${Description}
            "restartNeeded" = ${RestartNeeded}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ClusterManualUpgradeJobsInnerManagedProcessConfigurationRelay<PSCustomObject>

.DESCRIPTION

Convert from JSON to ClusterManualUpgradeJobsInnerManagedProcessConfigurationRelay<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ClusterManualUpgradeJobsInnerManagedProcessConfigurationRelay<PSCustomObject>
#>
function ConvertFrom-V2025JsonToClusterManualUpgradeJobsInnerManagedProcessConfigurationRelay {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025ClusterManualUpgradeJobsInnerManagedProcessConfigurationRelay' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025ClusterManualUpgradeJobsInnerManagedProcessConfigurationRelay
        $AllProperties = ("version", "path", "description", "restartNeeded")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'version' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "version"))) {
            throw "Error! JSON cannot be serialized due to the required property 'version' missing."
        } else {
            $Version = $JsonParameters.PSobject.Properties["version"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "path"))) {
            throw "Error! JSON cannot be serialized due to the required property 'path' missing."
        } else {
            $Path = $JsonParameters.PSobject.Properties["path"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "restartNeeded"))) {
            throw "Error! JSON cannot be serialized due to the required property 'restartNeeded' missing."
        } else {
            $RestartNeeded = $JsonParameters.PSobject.Properties["restartNeeded"].value
        }

        $PSO = [PSCustomObject]@{
            "version" = ${Version}
            "path" = ${Path}
            "description" = ${Description}
            "restartNeeded" = ${RestartNeeded}
        }

        return $PSO
    }

}

