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

.PARAMETER Id
Invocation ID
.PARAMETER TriggerId
Trigger ID
.PARAMETER SubscriptionName
Subscription name
.PARAMETER SubscriptionId
Subscription ID
.PARAMETER Type
No description available.
.PARAMETER Created
Invocation created timestamp. ISO-8601 in UTC.
.PARAMETER Completed
Invocation completed timestamp; empty fields imply invocation is in-flight or not completed. ISO-8601 in UTC.
.PARAMETER StartInvocationInput
No description available.
.PARAMETER CompleteInvocationInput
No description available.
.OUTPUTS

InvocationStatus<PSCustomObject>
#>

function Initialize-V2025InvocationStatus {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TriggerId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SubscriptionName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SubscriptionId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("TEST", "REAL_TIME")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Completed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StartInvocationInput},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CompleteInvocationInput}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025InvocationStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$TriggerId) {
            throw "invalid value for 'TriggerId', 'TriggerId' cannot be null."
        }

        if (!$SubscriptionName) {
            throw "invalid value for 'SubscriptionName', 'SubscriptionName' cannot be null."
        }

        if (!$SubscriptionId) {
            throw "invalid value for 'SubscriptionId', 'SubscriptionId' cannot be null."
        }

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Created) {
            throw "invalid value for 'Created', 'Created' cannot be null."
        }

        if (!$StartInvocationInput) {
            throw "invalid value for 'StartInvocationInput', 'StartInvocationInput' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "triggerId" = ${TriggerId}
            "subscriptionName" = ${SubscriptionName}
            "subscriptionId" = ${SubscriptionId}
            "type" = ${Type}
            "created" = ${Created}
            "completed" = ${Completed}
            "startInvocationInput" = ${StartInvocationInput}
            "completeInvocationInput" = ${CompleteInvocationInput}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InvocationStatus<PSCustomObject>

.DESCRIPTION

Convert from JSON to InvocationStatus<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InvocationStatus<PSCustomObject>
#>
function ConvertFrom-V2025JsonToInvocationStatus {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025InvocationStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025InvocationStatus
        $AllProperties = ("id", "triggerId", "subscriptionName", "subscriptionId", "type", "created", "completed", "startInvocationInput", "completeInvocationInput")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "triggerId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'triggerId' missing."
        } else {
            $TriggerId = $JsonParameters.PSobject.Properties["triggerId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subscriptionName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'subscriptionName' missing."
        } else {
            $SubscriptionName = $JsonParameters.PSobject.Properties["subscriptionName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subscriptionId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'subscriptionId' missing."
        } else {
            $SubscriptionId = $JsonParameters.PSobject.Properties["subscriptionId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created' missing."
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "startInvocationInput"))) {
            throw "Error! JSON cannot be serialized due to the required property 'startInvocationInput' missing."
        } else {
            $StartInvocationInput = $JsonParameters.PSobject.Properties["startInvocationInput"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completed"))) { #optional property not found
            $Completed = $null
        } else {
            $Completed = $JsonParameters.PSobject.Properties["completed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completeInvocationInput"))) { #optional property not found
            $CompleteInvocationInput = $null
        } else {
            $CompleteInvocationInput = $JsonParameters.PSobject.Properties["completeInvocationInput"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "triggerId" = ${TriggerId}
            "subscriptionName" = ${SubscriptionName}
            "subscriptionId" = ${SubscriptionId}
            "type" = ${Type}
            "created" = ${Created}
            "completed" = ${Completed}
            "startInvocationInput" = ${StartInvocationInput}
            "completeInvocationInput" = ${CompleteInvocationInput}
        }

        return $PSO
    }

}

