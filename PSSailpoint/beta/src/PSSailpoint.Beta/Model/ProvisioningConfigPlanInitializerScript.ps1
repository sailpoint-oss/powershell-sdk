#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

This is a reference to a plan initializer script.

.PARAMETER Source
This is a Rule that allows provisioning instruction changes.
.OUTPUTS

ProvisioningConfigPlanInitializerScript<PSCustomObject>
#>

function Initialize-BetaProvisioningConfigPlanInitializerScript {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Source}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaProvisioningConfigPlanInitializerScript' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "source" = ${Source}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProvisioningConfigPlanInitializerScript<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProvisioningConfigPlanInitializerScript<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProvisioningConfigPlanInitializerScript<PSCustomObject>
#>
function ConvertFrom-BetaJsonToProvisioningConfigPlanInitializerScript {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaProvisioningConfigPlanInitializerScript' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaProvisioningConfigPlanInitializerScript
        $AllProperties = ("source")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) { #optional property not found
            $Source = $null
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        $PSO = [PSCustomObject]@{
            "source" = ${Source}
        }

        return $PSO
    }

}
