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

No description available.

.PARAMETER StateName
The name of the lifecycle state
.PARAMETER ManuallyUpdated
Whether the lifecycle state has been manually or automatically set
.OUTPUTS

LifecycleStateDto<PSCustomObject>
#>

function Initialize-V2025LifecycleStateDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StateName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${ManuallyUpdated}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025LifecycleStateDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$StateName) {
            throw "invalid value for 'StateName', 'StateName' cannot be null."
        }

        if (!$ManuallyUpdated) {
            throw "invalid value for 'ManuallyUpdated', 'ManuallyUpdated' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "stateName" = ${StateName}
            "manuallyUpdated" = ${ManuallyUpdated}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LifecycleStateDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to LifecycleStateDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LifecycleStateDto<PSCustomObject>
#>
function ConvertFrom-V2025JsonToLifecycleStateDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025LifecycleStateDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025LifecycleStateDto
        $AllProperties = ("stateName", "manuallyUpdated")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'stateName' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "stateName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'stateName' missing."
        } else {
            $StateName = $JsonParameters.PSobject.Properties["stateName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "manuallyUpdated"))) {
            throw "Error! JSON cannot be serialized due to the required property 'manuallyUpdated' missing."
        } else {
            $ManuallyUpdated = $JsonParameters.PSobject.Properties["manuallyUpdated"].value
        }

        $PSO = [PSCustomObject]@{
            "stateName" = ${StateName}
            "manuallyUpdated" = ${ManuallyUpdated}
        }

        return $PSO
    }

}

