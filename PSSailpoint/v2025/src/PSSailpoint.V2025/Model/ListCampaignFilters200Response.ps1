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

.PARAMETER Items
List of campaign filters.
.PARAMETER Count
Number of filters returned.
.OUTPUTS

ListCampaignFilters200Response<PSCustomObject>
#>

function Initialize-V2025ListCampaignFilters200Response {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Items},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025ListCampaignFilters200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "items" = ${Items}
            "count" = ${Count}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ListCampaignFilters200Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to ListCampaignFilters200Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ListCampaignFilters200Response<PSCustomObject>
#>
function ConvertFrom-V2025JsonToListCampaignFilters200Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025ListCampaignFilters200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025ListCampaignFilters200Response
        $AllProperties = ("items", "count")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "items"))) { #optional property not found
            $Items = $null
        } else {
            $Items = $JsonParameters.PSobject.Properties["items"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "count"))) { #optional property not found
            $Count = $null
        } else {
            $Count = $JsonParameters.PSobject.Properties["count"].value
        }

        $PSO = [PSCustomObject]@{
            "items" = ${Items}
            "count" = ${Count}
        }

        return $PSO
    }

}

