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

Previous certification.

.PARAMETER Type
DTO type of certification for review.
.PARAMETER Id
ID of certification for review.
.PARAMETER Name
Display name of certification for review.
.PARAMETER Reviewer
No description available.
.OUTPUTS

CertificationReference1<PSCustomObject>
#>

function Initialize-V2024CertificationReference1 {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CERTIFICATION")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Reviewer}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024CertificationReference1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "name" = ${Name}
            "reviewer" = ${Reviewer}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CertificationReference1<PSCustomObject>

.DESCRIPTION

Convert from JSON to CertificationReference1<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CertificationReference1<PSCustomObject>
#>
function ConvertFrom-V2024JsonToCertificationReference1 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024CertificationReference1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024CertificationReference1
        $AllProperties = ("type", "id", "name", "reviewer")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reviewer"))) { #optional property not found
            $Reviewer = $null
        } else {
            $Reviewer = $JsonParameters.PSobject.Properties["reviewer"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "name" = ${Name}
            "reviewer" = ${Reviewer}
        }

        return $PSO
    }

}
