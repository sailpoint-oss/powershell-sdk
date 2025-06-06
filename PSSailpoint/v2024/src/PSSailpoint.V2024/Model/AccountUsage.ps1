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

.PARAMETER Date
The first day of the month for which activity is aggregated.
.PARAMETER Count
The number of days within the month that the account was active in a source.
.OUTPUTS

AccountUsage<PSCustomObject>
#>

function Initialize-V2024AccountUsage {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Date},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Count}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024AccountUsage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "date" = ${Date}
            "count" = ${Count}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountUsage<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountUsage<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountUsage<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccountUsage {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024AccountUsage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AccountUsage
        $AllProperties = ("date", "count")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "date"))) { #optional property not found
            $Date = $null
        } else {
            $Date = $JsonParameters.PSobject.Properties["date"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "count"))) { #optional property not found
            $Count = $null
        } else {
            $Count = $JsonParameters.PSobject.Properties["count"].value
        }

        $PSO = [PSCustomObject]@{
            "date" = ${Date}
            "count" = ${Count}
        }

        return $PSO
    }

}

