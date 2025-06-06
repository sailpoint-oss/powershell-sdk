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

.PARAMETER IdentityIds
The ids of the identities for which enable/disable accounts.
.OUTPUTS

IdentitiesAccountsBulkRequest<PSCustomObject>
#>

function Initialize-V2025IdentitiesAccountsBulkRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${IdentityIds}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025IdentitiesAccountsBulkRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "identityIds" = ${IdentityIds}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentitiesAccountsBulkRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentitiesAccountsBulkRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentitiesAccountsBulkRequest<PSCustomObject>
#>
function ConvertFrom-V2025JsonToIdentitiesAccountsBulkRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025IdentitiesAccountsBulkRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025IdentitiesAccountsBulkRequest
        $AllProperties = ("identityIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityIds"))) { #optional property not found
            $IdentityIds = $null
        } else {
            $IdentityIds = $JsonParameters.PSobject.Properties["identityIds"].value
        }

        $PSO = [PSCustomObject]@{
            "identityIds" = ${IdentityIds}
        }

        return $PSO
    }

}

