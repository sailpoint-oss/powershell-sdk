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

.PARAMETER TimeZone
The timezone must be in a valid ISO 8601 format. Timezones in ISO 8601 are represented as UTC (represented as 'Z') or as an offset from UTC. The offset format can be +/-hh:mm, +/-hhmm, or +/-hh.
.OUTPUTS

ActivateCampaignOptions<PSCustomObject>
#>

function Initialize-V2024ActivateCampaignOptions {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TimeZone} = "Z"
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024ActivateCampaignOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "timeZone" = ${TimeZone}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ActivateCampaignOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to ActivateCampaignOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ActivateCampaignOptions<PSCustomObject>
#>
function ConvertFrom-V2024JsonToActivateCampaignOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024ActivateCampaignOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ActivateCampaignOptions
        $AllProperties = ("timeZone")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timeZone"))) { #optional property not found
            $TimeZone = $null
        } else {
            $TimeZone = $JsonParameters.PSobject.Properties["timeZone"].value
        }

        $PSO = [PSCustomObject]@{
            "timeZone" = ${TimeZone}
        }

        return $PSO
    }

}

