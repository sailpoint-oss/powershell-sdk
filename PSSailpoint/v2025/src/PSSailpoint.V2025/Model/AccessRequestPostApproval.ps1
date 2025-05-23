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

.PARAMETER AccessRequestId
The unique ID of the access request.
.PARAMETER RequestedFor
Identities access was requested for.
.PARAMETER RequestedItemsStatus
Details on the outcome of each access item.
.PARAMETER RequestedBy
No description available.
.OUTPUTS

AccessRequestPostApproval<PSCustomObject>
#>

function Initialize-V2025AccessRequestPostApproval {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccessRequestId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${RequestedFor},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${RequestedItemsStatus},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RequestedBy}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025AccessRequestPostApproval' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$AccessRequestId) {
            throw "invalid value for 'AccessRequestId', 'AccessRequestId' cannot be null."
        }

        if (!$RequestedFor) {
            throw "invalid value for 'RequestedFor', 'RequestedFor' cannot be null."
        }

        if ($RequestedFor.length -gt 10) {
            throw "invalid value for 'RequestedFor', number of items must be less than or equal to 10."
        }

        if ($RequestedFor.length -lt 1) {
            throw "invalid value for 'RequestedFor', number of items must be greater than or equal to 1."
        }

        if (!$RequestedItemsStatus) {
            throw "invalid value for 'RequestedItemsStatus', 'RequestedItemsStatus' cannot be null."
        }

        if (!$RequestedBy) {
            throw "invalid value for 'RequestedBy', 'RequestedBy' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "accessRequestId" = ${AccessRequestId}
            "requestedFor" = ${RequestedFor}
            "requestedItemsStatus" = ${RequestedItemsStatus}
            "requestedBy" = ${RequestedBy}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessRequestPostApproval<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessRequestPostApproval<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessRequestPostApproval<PSCustomObject>
#>
function ConvertFrom-V2025JsonToAccessRequestPostApproval {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025AccessRequestPostApproval' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025AccessRequestPostApproval
        $AllProperties = ("accessRequestId", "requestedFor", "requestedItemsStatus", "requestedBy")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'accessRequestId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessRequestId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'accessRequestId' missing."
        } else {
            $AccessRequestId = $JsonParameters.PSobject.Properties["accessRequestId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedFor"))) {
            throw "Error! JSON cannot be serialized due to the required property 'requestedFor' missing."
        } else {
            $RequestedFor = $JsonParameters.PSobject.Properties["requestedFor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedItemsStatus"))) {
            throw "Error! JSON cannot be serialized due to the required property 'requestedItemsStatus' missing."
        } else {
            $RequestedItemsStatus = $JsonParameters.PSobject.Properties["requestedItemsStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedBy"))) {
            throw "Error! JSON cannot be serialized due to the required property 'requestedBy' missing."
        } else {
            $RequestedBy = $JsonParameters.PSobject.Properties["requestedBy"].value
        }

        $PSO = [PSCustomObject]@{
            "accessRequestId" = ${AccessRequestId}
            "requestedFor" = ${RequestedFor}
            "requestedItemsStatus" = ${RequestedItemsStatus}
            "requestedBy" = ${RequestedBy}
        }

        return $PSO
    }

}

