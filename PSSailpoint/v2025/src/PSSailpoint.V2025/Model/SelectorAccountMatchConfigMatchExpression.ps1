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

.PARAMETER MatchTerms
No description available.
.PARAMETER And
If it is AND operators for match terms
.OUTPUTS

SelectorAccountMatchConfigMatchExpression<PSCustomObject>
#>

function Initialize-V2025SelectorAccountMatchConfigMatchExpression {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${MatchTerms},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${And} = $true
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025SelectorAccountMatchConfigMatchExpression' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "matchTerms" = ${MatchTerms}
            "and" = ${And}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SelectorAccountMatchConfigMatchExpression<PSCustomObject>

.DESCRIPTION

Convert from JSON to SelectorAccountMatchConfigMatchExpression<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SelectorAccountMatchConfigMatchExpression<PSCustomObject>
#>
function ConvertFrom-V2025JsonToSelectorAccountMatchConfigMatchExpression {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025SelectorAccountMatchConfigMatchExpression' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025SelectorAccountMatchConfigMatchExpression
        $AllProperties = ("matchTerms", "and")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "matchTerms"))) { #optional property not found
            $MatchTerms = $null
        } else {
            $MatchTerms = $JsonParameters.PSobject.Properties["matchTerms"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "and"))) { #optional property not found
            $And = $null
        } else {
            $And = $JsonParameters.PSobject.Properties["and"].value
        }

        $PSO = [PSCustomObject]@{
            "matchTerms" = ${MatchTerms}
            "and" = ${And}
        }

        return $PSO
    }

}

