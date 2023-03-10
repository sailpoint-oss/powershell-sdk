#
# SailPoint SaaS API
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: 2.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Healthy
No description available.
.PARAMETER Unhealthy
No description available.
.OUTPUTS

GetOrgSettings200ResponseSystemNotificationConfigNotificationsInnerThresholds<PSCustomObject>
#>

function Initialize-V2GetOrgSettings200ResponseSystemNotificationConfigNotificationsInnerThresholds {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Healthy},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Unhealthy}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2 => V2GetOrgSettings200ResponseSystemNotificationConfigNotificationsInnerThresholds' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "healthy" = ${Healthy}
            "unhealthy" = ${Unhealthy}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GetOrgSettings200ResponseSystemNotificationConfigNotificationsInnerThresholds<PSCustomObject>

.DESCRIPTION

Convert from JSON to GetOrgSettings200ResponseSystemNotificationConfigNotificationsInnerThresholds<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GetOrgSettings200ResponseSystemNotificationConfigNotificationsInnerThresholds<PSCustomObject>
#>
function ConvertFrom-V2JsonToGetOrgSettings200ResponseSystemNotificationConfigNotificationsInnerThresholds {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2 => V2GetOrgSettings200ResponseSystemNotificationConfigNotificationsInnerThresholds' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2GetOrgSettings200ResponseSystemNotificationConfigNotificationsInnerThresholds
        $AllProperties = ("healthy", "unhealthy")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "healthy"))) { #optional property not found
            $Healthy = $null
        } else {
            $Healthy = $JsonParameters.PSobject.Properties["healthy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unhealthy"))) { #optional property not found
            $Unhealthy = $null
        } else {
            $Unhealthy = $JsonParameters.PSobject.Properties["unhealthy"].value
        }

        $PSO = [PSCustomObject]@{
            "healthy" = ${Healthy}
            "unhealthy" = ${Unhealthy}
        }

        return $PSO
    }

}

