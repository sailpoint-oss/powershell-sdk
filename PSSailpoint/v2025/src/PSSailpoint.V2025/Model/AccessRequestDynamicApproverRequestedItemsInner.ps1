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
The unique ID of the access item.
.PARAMETER Name
Human friendly name of the access item.
.PARAMETER Description
Extended description of the access item.
.PARAMETER Type
The type of access item being requested.
.PARAMETER Operation
Grant or revoke the access item
.PARAMETER Comment
A comment from the requestor on why the access is needed.
.OUTPUTS

AccessRequestDynamicApproverRequestedItemsInner<PSCustomObject>
#>

function Initialize-V2025AccessRequestDynamicApproverRequestedItemsInner {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCESS_PROFILE", "ROLE", "ENTITLEMENT")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Add", "Remove")]
        [PSCustomObject]
        ${Operation},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025AccessRequestDynamicApproverRequestedItemsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Operation) {
            throw "invalid value for 'Operation', 'Operation' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "type" = ${Type}
            "operation" = ${Operation}
            "comment" = ${Comment}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessRequestDynamicApproverRequestedItemsInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessRequestDynamicApproverRequestedItemsInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessRequestDynamicApproverRequestedItemsInner<PSCustomObject>
#>
function ConvertFrom-V2025JsonToAccessRequestDynamicApproverRequestedItemsInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025AccessRequestDynamicApproverRequestedItemsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025AccessRequestDynamicApproverRequestedItemsInner
        $AllProperties = ("id", "name", "description", "type", "operation", "comment")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operation"))) {
            throw "Error! JSON cannot be serialized due to the required property 'operation' missing."
        } else {
            $Operation = $JsonParameters.PSobject.Properties["operation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "type" = ${Type}
            "operation" = ${Operation}
            "comment" = ${Comment}
        }

        return $PSO
    }

}

