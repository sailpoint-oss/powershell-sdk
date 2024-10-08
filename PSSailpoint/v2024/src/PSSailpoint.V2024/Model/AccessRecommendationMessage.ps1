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

.PARAMETER Interpretation
Information about why the access item was recommended.
.OUTPUTS

AccessRecommendationMessage<PSCustomObject>
#>

function Initialize-V2024AccessRecommendationMessage {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Interpretation}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024AccessRecommendationMessage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "interpretation" = ${Interpretation}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessRecommendationMessage<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessRecommendationMessage<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessRecommendationMessage<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccessRecommendationMessage {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024AccessRecommendationMessage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AccessRecommendationMessage
        $AllProperties = ("interpretation")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "interpretation"))) { #optional property not found
            $Interpretation = $null
        } else {
            $Interpretation = $JsonParameters.PSobject.Properties["interpretation"].value
        }

        $PSO = [PSCustomObject]@{
            "interpretation" = ${Interpretation}
        }

        return $PSO
    }

}

