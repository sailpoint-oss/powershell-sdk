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

.PARAMETER MultihostId
Multi-Host Integration ID. The ID must be unique
.PARAMETER AggregationGrpId
Multi-Host Integration aggregation group ID
.PARAMETER AggregationGrpName
Multi-Host Integration name
.PARAMETER AggregationCronSchedule
Cron expression to schedule aggregation
.PARAMETER EnableSchedule
Boolean value for Multi-Host Integration aggregation schedule.  This specifies if scheduled aggregation is enabled or disabled.
.PARAMETER SourceIdList
Source IDs of the Multi-Host Integration
.PARAMETER Created
Created date of Multi-Host Integration aggregation schedule
.PARAMETER Modified
Modified date of Multi-Host Integration aggregation schedule
.OUTPUTS

MultiHostIntegrationsAggScheduleUpdate<PSCustomObject>
#>

function Initialize-BetaMultiHostIntegrationsAggScheduleUpdate {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MultihostId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AggregationGrpId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AggregationGrpName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AggregationCronSchedule},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${EnableSchedule} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SourceIdList},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaMultiHostIntegrationsAggScheduleUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$MultihostId) {
            throw "invalid value for 'MultihostId', 'MultihostId' cannot be null."
        }

        if (!$AggregationGrpId) {
            throw "invalid value for 'AggregationGrpId', 'AggregationGrpId' cannot be null."
        }

        if (!$AggregationGrpName) {
            throw "invalid value for 'AggregationGrpName', 'AggregationGrpName' cannot be null."
        }

        if (!$AggregationCronSchedule) {
            throw "invalid value for 'AggregationCronSchedule', 'AggregationCronSchedule' cannot be null."
        }

        if (!$EnableSchedule) {
            throw "invalid value for 'EnableSchedule', 'EnableSchedule' cannot be null."
        }

        if (!$SourceIdList) {
            throw "invalid value for 'SourceIdList', 'SourceIdList' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "multihost_id" = ${MultihostId}
            "aggregation_grp_id" = ${AggregationGrpId}
            "aggregation_grp_name" = ${AggregationGrpName}
            "aggregation_cron_schedule" = ${AggregationCronSchedule}
            "enableSchedule" = ${EnableSchedule}
            "source_id_list" = ${SourceIdList}
            "created" = ${Created}
            "modified" = ${Modified}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MultiHostIntegrationsAggScheduleUpdate<PSCustomObject>

.DESCRIPTION

Convert from JSON to MultiHostIntegrationsAggScheduleUpdate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MultiHostIntegrationsAggScheduleUpdate<PSCustomObject>
#>
function ConvertFrom-BetaJsonToMultiHostIntegrationsAggScheduleUpdate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaMultiHostIntegrationsAggScheduleUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaMultiHostIntegrationsAggScheduleUpdate
        $AllProperties = ("multihost_id", "aggregation_grp_id", "aggregation_grp_name", "aggregation_cron_schedule", "enableSchedule", "source_id_list", "created", "modified")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'multihost_id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "multihost_id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'multihost_id' missing."
        } else {
            $MultihostId = $JsonParameters.PSobject.Properties["multihost_id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "aggregation_grp_id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'aggregation_grp_id' missing."
        } else {
            $AggregationGrpId = $JsonParameters.PSobject.Properties["aggregation_grp_id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "aggregation_grp_name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'aggregation_grp_name' missing."
        } else {
            $AggregationGrpName = $JsonParameters.PSobject.Properties["aggregation_grp_name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "aggregation_cron_schedule"))) {
            throw "Error! JSON cannot be serialized due to the required property 'aggregation_cron_schedule' missing."
        } else {
            $AggregationCronSchedule = $JsonParameters.PSobject.Properties["aggregation_cron_schedule"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enableSchedule"))) {
            throw "Error! JSON cannot be serialized due to the required property 'enableSchedule' missing."
        } else {
            $EnableSchedule = $JsonParameters.PSobject.Properties["enableSchedule"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source_id_list"))) {
            throw "Error! JSON cannot be serialized due to the required property 'source_id_list' missing."
        } else {
            $SourceIdList = $JsonParameters.PSobject.Properties["source_id_list"].value
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
            "multihost_id" = ${MultihostId}
            "aggregation_grp_id" = ${AggregationGrpId}
            "aggregation_grp_name" = ${AggregationGrpName}
            "aggregation_cron_schedule" = ${AggregationCronSchedule}
            "enableSchedule" = ${EnableSchedule}
            "source_id_list" = ${SourceIdList}
            "created" = ${Created}
            "modified" = ${Modified}
        }

        return $PSO
    }

}
