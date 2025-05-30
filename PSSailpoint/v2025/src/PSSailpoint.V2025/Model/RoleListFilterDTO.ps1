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

AMMFilterValues

.PARAMETER Filters
Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results) Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **requestable**: *eq*
.PARAMETER AmmKeyValues
No description available.
.OUTPUTS

RoleListFilterDTO<PSCustomObject>
#>

function Initialize-V2025RoleListFilterDTO {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Filters},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AmmKeyValues}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025RoleListFilterDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "filters" = ${Filters}
            "ammKeyValues" = ${AmmKeyValues}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleListFilterDTO<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleListFilterDTO<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleListFilterDTO<PSCustomObject>
#>
function ConvertFrom-V2025JsonToRoleListFilterDTO {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025RoleListFilterDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025RoleListFilterDTO
        $AllProperties = ("filters", "ammKeyValues")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filters"))) { #optional property not found
            $Filters = $null
        } else {
            $Filters = $JsonParameters.PSobject.Properties["filters"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ammKeyValues"))) { #optional property not found
            $AmmKeyValues = $null
        } else {
            $AmmKeyValues = $JsonParameters.PSobject.Properties["ammKeyValues"].value
        }

        $PSO = [PSCustomObject]@{
            "filters" = ${Filters}
            "ammKeyValues" = ${AmmKeyValues}
        }

        return $PSO
    }

}

