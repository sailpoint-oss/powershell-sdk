#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Attributes
A JSON object that stores the context.
.PARAMETER Created
When the global context was created
.PARAMETER Modified
When the global context was last modified
.OUTPUTS

NotificationTemplateContext<PSCustomObject>
#>

function Initialize-BetaNotificationTemplateContext {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Attributes},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaNotificationTemplateContext' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "attributes" = ${Attributes}
            "created" = ${Created}
            "modified" = ${Modified}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NotificationTemplateContext<PSCustomObject>

.DESCRIPTION

Convert from JSON to NotificationTemplateContext<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NotificationTemplateContext<PSCustomObject>
#>
function ConvertFrom-BetaJsonToNotificationTemplateContext {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaNotificationTemplateContext' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaNotificationTemplateContext
        $AllProperties = ("attributes", "created", "modified")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        $PSO = [PSCustomObject]@{
            "attributes" = ${Attributes}
            "created" = ${Created}
            "modified" = ${Modified}
        }

        return $PSO
    }

}
