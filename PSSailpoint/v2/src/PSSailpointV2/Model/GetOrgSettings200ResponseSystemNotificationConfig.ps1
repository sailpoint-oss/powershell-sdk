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

.PARAMETER Notifications
No description available.
.PARAMETER RecipientType
No description available.
.OUTPUTS

GetOrgSettings200ResponseSystemNotificationConfig<PSCustomObject>
#>

function Initialize-V2GetOrgSettings200ResponseSystemNotificationConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Notifications},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("allAdmins", "specificIdentities")]
        [String]
        ${RecipientType}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2 => V2GetOrgSettings200ResponseSystemNotificationConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "notifications" = ${Notifications}
            "recipientType" = ${RecipientType}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GetOrgSettings200ResponseSystemNotificationConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to GetOrgSettings200ResponseSystemNotificationConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GetOrgSettings200ResponseSystemNotificationConfig<PSCustomObject>
#>
function ConvertFrom-V2JsonToGetOrgSettings200ResponseSystemNotificationConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2 => V2GetOrgSettings200ResponseSystemNotificationConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2GetOrgSettings200ResponseSystemNotificationConfig
        $AllProperties = ("notifications", "recipientType")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notifications"))) { #optional property not found
            $Notifications = $null
        } else {
            $Notifications = $JsonParameters.PSobject.Properties["notifications"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipientType"))) { #optional property not found
            $RecipientType = $null
        } else {
            $RecipientType = $JsonParameters.PSobject.Properties["recipientType"].value
        }

        $PSO = [PSCustomObject]@{
            "notifications" = ${Notifications}
            "recipientType" = ${RecipientType}
        }

        return $PSO
    }

}

