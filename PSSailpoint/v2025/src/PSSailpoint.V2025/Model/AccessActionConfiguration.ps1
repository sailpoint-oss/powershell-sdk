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

This is used for access configuration for a lifecycle state

.PARAMETER RemoveAllAccessEnabled
If true, then all accesses are marked for removal.
.OUTPUTS

AccessActionConfiguration<PSCustomObject>
#>

function Initialize-V2025AccessActionConfiguration {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RemoveAllAccessEnabled} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025AccessActionConfiguration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "removeAllAccessEnabled" = ${RemoveAllAccessEnabled}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessActionConfiguration<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessActionConfiguration<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessActionConfiguration<PSCustomObject>
#>
function ConvertFrom-V2025JsonToAccessActionConfiguration {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025AccessActionConfiguration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025AccessActionConfiguration
        $AllProperties = ("removeAllAccessEnabled")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "removeAllAccessEnabled"))) { #optional property not found
            $RemoveAllAccessEnabled = $null
        } else {
            $RemoveAllAccessEnabled = $JsonParameters.PSobject.Properties["removeAllAccessEnabled"].value
        }

        $PSO = [PSCustomObject]@{
            "removeAllAccessEnabled" = ${RemoveAllAccessEnabled}
        }

        return $PSO
    }

}

