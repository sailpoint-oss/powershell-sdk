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
ID of access item being recommended.
.PARAMETER Type
No description available.
.OUTPUTS

AccessRequestRecommendationItem<PSCustomObject>
#>

function Initialize-V2024AccessRequestRecommendationItem {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCESS_PROFILE", "ROLE")]
        [PSCustomObject]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024AccessRequestRecommendationItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessRequestRecommendationItem<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessRequestRecommendationItem<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessRequestRecommendationItem<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccessRequestRecommendationItem {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024AccessRequestRecommendationItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AccessRequestRecommendationItem
        $AllProperties = ("id", "type")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
        }

        return $PSO
    }

}
