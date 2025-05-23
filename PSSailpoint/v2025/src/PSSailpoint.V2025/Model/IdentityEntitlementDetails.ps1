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

.PARAMETER IdentityId
Id of Identity
.PARAMETER Entitlement
No description available.
.PARAMETER SourceId
Id of Source
.PARAMETER AccountTargets
A list of account targets on the identity provisioned with the requested entitlement.
.OUTPUTS

IdentityEntitlementDetails<PSCustomObject>
#>

function Initialize-V2025IdentityEntitlementDetails {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Entitlement},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccountTargets}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025IdentityEntitlementDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "entitlement" = ${Entitlement}
            "sourceId" = ${SourceId}
            "accountTargets" = ${AccountTargets}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityEntitlementDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityEntitlementDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityEntitlementDetails<PSCustomObject>
#>
function ConvertFrom-V2025JsonToIdentityEntitlementDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025IdentityEntitlementDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025IdentityEntitlementDetails
        $AllProperties = ("identityId", "entitlement", "sourceId", "accountTargets")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityId"))) { #optional property not found
            $IdentityId = $null
        } else {
            $IdentityId = $JsonParameters.PSobject.Properties["identityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlement"))) { #optional property not found
            $Entitlement = $null
        } else {
            $Entitlement = $JsonParameters.PSobject.Properties["entitlement"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) { #optional property not found
            $SourceId = $null
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountTargets"))) { #optional property not found
            $AccountTargets = $null
        } else {
            $AccountTargets = $JsonParameters.PSobject.Properties["accountTargets"].value
        }

        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "entitlement" = ${Entitlement}
            "sourceId" = ${SourceId}
            "accountTargets" = ${AccountTargets}
        }

        return $PSO
    }

}

