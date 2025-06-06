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

.PARAMETER Value
Value of the policy
.OUTPUTS

DataAccessPoliciesInner<PSCustomObject>
#>

function Initialize-V2025DataAccessPoliciesInner {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025DataAccessPoliciesInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "value" = ${Value}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DataAccessPoliciesInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to DataAccessPoliciesInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DataAccessPoliciesInner<PSCustomObject>
#>
function ConvertFrom-V2025JsonToDataAccessPoliciesInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025DataAccessPoliciesInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025DataAccessPoliciesInner
        $AllProperties = ("value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "value" = ${Value}
        }

        return $PSO
    }

}

