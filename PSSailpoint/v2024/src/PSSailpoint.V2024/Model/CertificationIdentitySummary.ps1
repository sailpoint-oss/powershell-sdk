#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Id
The ID of the identity summary
.PARAMETER Name
Name of the linked identity
.PARAMETER IdentityId
The ID of the identity being certified
.PARAMETER Completed
Indicates whether the review items for the linked identity's certification have been completed
.OUTPUTS

CertificationIdentitySummary<PSCustomObject>
#>

function Initialize-V2024CertificationIdentitySummary {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Completed}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024CertificationIdentitySummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "identityId" = ${IdentityId}
            "completed" = ${Completed}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CertificationIdentitySummary<PSCustomObject>

.DESCRIPTION

Convert from JSON to CertificationIdentitySummary<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CertificationIdentitySummary<PSCustomObject>
#>
function ConvertFrom-V2024JsonToCertificationIdentitySummary {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024CertificationIdentitySummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024CertificationIdentitySummary
        $AllProperties = ("id", "name", "identityId", "completed")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityId"))) { #optional property not found
            $IdentityId = $null
        } else {
            $IdentityId = $JsonParameters.PSobject.Properties["identityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completed"))) { #optional property not found
            $Completed = $null
        } else {
            $Completed = $JsonParameters.PSobject.Properties["completed"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "identityId" = ${IdentityId}
            "completed" = ${Completed}
        }

        return $PSO
    }

}
