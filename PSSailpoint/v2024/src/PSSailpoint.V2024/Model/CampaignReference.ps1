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

.PARAMETER Id
The unique ID of the campaign.
.PARAMETER Name
The name of the campaign.
.PARAMETER Type
The type of object that is being referenced.
.PARAMETER CampaignType
The type of the campaign.
.PARAMETER Description
The description of the campaign set by the admin who created it.
.PARAMETER CorrelatedStatus
The correlatedStatus of the campaign. Only SOURCE_OWNER campaigns can be Uncorrelated. An Uncorrelated certification campaign only includes Uncorrelated identities (An identity is uncorrelated if it has no accounts on an authoritative source).
.PARAMETER MandatoryCommentRequirement
Determines whether comments are required for decisions during certification reviews. You can require comments for all decisions, revoke-only decisions, or no decisions. By default, comments are not required for decisions.
.OUTPUTS

CampaignReference<PSCustomObject>
#>

function Initialize-V2024CampaignReference {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CAMPAIGN")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("MANAGER", "SOURCE_OWNER", "SEARCH")]
        [String]
        ${CampaignType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CORRELATED", "UNCORRELATED")]
        [String]
        ${CorrelatedStatus},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ALL_DECISIONS", "REVOKE_ONLY_DECISIONS", "NO_DECISIONS")]
        [String]
        ${MandatoryCommentRequirement}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024CampaignReference' | Write-Debug
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

        if (!$CampaignType) {
            throw "invalid value for 'CampaignType', 'CampaignType' cannot be null."
        }

        if (!$CorrelatedStatus) {
            throw "invalid value for 'CorrelatedStatus', 'CorrelatedStatus' cannot be null."
        }

        if (!$MandatoryCommentRequirement) {
            throw "invalid value for 'MandatoryCommentRequirement', 'MandatoryCommentRequirement' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "type" = ${Type}
            "campaignType" = ${CampaignType}
            "description" = ${Description}
            "correlatedStatus" = ${CorrelatedStatus}
            "mandatoryCommentRequirement" = ${MandatoryCommentRequirement}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CampaignReference<PSCustomObject>

.DESCRIPTION

Convert from JSON to CampaignReference<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CampaignReference<PSCustomObject>
#>
function ConvertFrom-V2024JsonToCampaignReference {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024CampaignReference' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024CampaignReference
        $AllProperties = ("id", "name", "type", "campaignType", "description", "correlatedStatus", "mandatoryCommentRequirement")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "campaignType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'campaignType' missing."
        } else {
            $CampaignType = $JsonParameters.PSobject.Properties["campaignType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "correlatedStatus"))) {
            throw "Error! JSON cannot be serialized due to the required property 'correlatedStatus' missing."
        } else {
            $CorrelatedStatus = $JsonParameters.PSobject.Properties["correlatedStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mandatoryCommentRequirement"))) {
            throw "Error! JSON cannot be serialized due to the required property 'mandatoryCommentRequirement' missing."
        } else {
            $MandatoryCommentRequirement = $JsonParameters.PSobject.Properties["mandatoryCommentRequirement"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "type" = ${Type}
            "campaignType" = ${CampaignType}
            "description" = ${Description}
            "correlatedStatus" = ${CorrelatedStatus}
            "mandatoryCommentRequirement" = ${MandatoryCommentRequirement}
        }

        return $PSO
    }

}
