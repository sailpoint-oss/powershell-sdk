#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER TrackingNumber
Provisioning request's reference number. Useful for tracking status in the 'Account Activity' search interface.
.PARAMETER Sources
Sources the provisioning transactions were performed on. Sources are comma separated.
.PARAMETER Action
Origin of the provisioning request.
.PARAMETER Errors
List of any accumulated error messages that occurred during provisioning.
.PARAMETER Warnings
List of any accumulated warning messages that occurred during provisioning.
.PARAMETER Recipient
No description available.
.PARAMETER Requester
No description available.
.PARAMETER AccountRequests
List of provisioning instructions to perform on an account-by-account basis.
.OUTPUTS

ProvisioningCompleted<PSCustomObject>
#>

function Initialize-BetaProvisioningCompleted {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TrackingNumber},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Sources},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Action},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Errors},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Warnings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Recipient},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Requester},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccountRequests}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaProvisioningCompleted' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$TrackingNumber) {
            throw "invalid value for 'TrackingNumber', 'TrackingNumber' cannot be null."
        }

        if (!$Sources) {
            throw "invalid value for 'Sources', 'Sources' cannot be null."
        }

        if (!$Recipient) {
            throw "invalid value for 'Recipient', 'Recipient' cannot be null."
        }

        if (!$AccountRequests) {
            throw "invalid value for 'AccountRequests', 'AccountRequests' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "trackingNumber" = ${TrackingNumber}
            "sources" = ${Sources}
            "action" = ${Action}
            "errors" = ${Errors}
            "warnings" = ${Warnings}
            "recipient" = ${Recipient}
            "requester" = ${Requester}
            "accountRequests" = ${AccountRequests}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProvisioningCompleted<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProvisioningCompleted<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProvisioningCompleted<PSCustomObject>
#>
function ConvertFrom-BetaJsonToProvisioningCompleted {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaProvisioningCompleted' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaProvisioningCompleted
        $AllProperties = ("trackingNumber", "sources", "action", "errors", "warnings", "recipient", "requester", "accountRequests")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'trackingNumber' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "trackingNumber"))) {
            throw "Error! JSON cannot be serialized due to the required property 'trackingNumber' missing."
        } else {
            $TrackingNumber = $JsonParameters.PSobject.Properties["trackingNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sources"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sources' missing."
        } else {
            $Sources = $JsonParameters.PSobject.Properties["sources"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipient"))) {
            throw "Error! JSON cannot be serialized due to the required property 'recipient' missing."
        } else {
            $Recipient = $JsonParameters.PSobject.Properties["recipient"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountRequests"))) {
            throw "Error! JSON cannot be serialized due to the required property 'accountRequests' missing."
        } else {
            $AccountRequests = $JsonParameters.PSobject.Properties["accountRequests"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "action"))) { #optional property not found
            $Action = $null
        } else {
            $Action = $JsonParameters.PSobject.Properties["action"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errors"))) { #optional property not found
            $Errors = $null
        } else {
            $Errors = $JsonParameters.PSobject.Properties["errors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "warnings"))) { #optional property not found
            $Warnings = $null
        } else {
            $Warnings = $JsonParameters.PSobject.Properties["warnings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requester"))) { #optional property not found
            $Requester = $null
        } else {
            $Requester = $JsonParameters.PSobject.Properties["requester"].value
        }

        $PSO = [PSCustomObject]@{
            "trackingNumber" = ${TrackingNumber}
            "sources" = ${Sources}
            "action" = ${Action}
            "errors" = ${Errors}
            "warnings" = ${Warnings}
            "recipient" = ${Recipient}
            "requester" = ${Requester}
            "accountRequests" = ${AccountRequests}
        }

        return $PSO
    }

}

