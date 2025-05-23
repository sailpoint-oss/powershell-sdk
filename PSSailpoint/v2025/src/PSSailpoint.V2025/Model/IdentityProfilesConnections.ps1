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

.PARAMETER Id
ID of the IdentityProfile this reference applies
.PARAMETER Name
Human-readable display name of the IdentityProfile to which this reference applies
.PARAMETER IdentityCount
The Number of Identities managed by this IdentityProfile
.OUTPUTS

IdentityProfilesConnections<PSCustomObject>
#>

function Initialize-V2025IdentityProfilesConnections {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${IdentityCount}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025IdentityProfilesConnections' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "identityCount" = ${IdentityCount}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityProfilesConnections<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityProfilesConnections<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityProfilesConnections<PSCustomObject>
#>
function ConvertFrom-V2025JsonToIdentityProfilesConnections {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025IdentityProfilesConnections' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025IdentityProfilesConnections
        $AllProperties = ("id", "name", "identityCount")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityCount"))) { #optional property not found
            $IdentityCount = $null
        } else {
            $IdentityCount = $JsonParameters.PSobject.Properties["identityCount"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "identityCount" = ${IdentityCount}
        }

        return $PSO
    }

}

