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

Definition of a type of task, used to invoke tasks

.PARAMETER Id
System-generated unique ID of the TaskDefinition
.PARAMETER UniqueName
Name of the TaskDefinition
.PARAMETER Description
Description of the TaskDefinition
.PARAMETER ParentName
Name of the parent of the TaskDefinition
.PARAMETER Executor
Executor of the TaskDefinition
.PARAMETER Arguments
Formal parameters of the TaskDefinition, without values
.OUTPUTS

TaskDefinitionSummary<PSCustomObject>
#>

function Initialize-V2024TaskDefinitionSummary {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UniqueName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ParentName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Executor},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Arguments}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024TaskDefinitionSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$UniqueName) {
            throw "invalid value for 'UniqueName', 'UniqueName' cannot be null."
        }

        if (!$ParentName) {
            throw "invalid value for 'ParentName', 'ParentName' cannot be null."
        }

        if (!$Arguments) {
            throw "invalid value for 'Arguments', 'Arguments' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "uniqueName" = ${UniqueName}
            "description" = ${Description}
            "parentName" = ${ParentName}
            "executor" = ${Executor}
            "arguments" = ${Arguments}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TaskDefinitionSummary<PSCustomObject>

.DESCRIPTION

Convert from JSON to TaskDefinitionSummary<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TaskDefinitionSummary<PSCustomObject>
#>
function ConvertFrom-V2024JsonToTaskDefinitionSummary {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024TaskDefinitionSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024TaskDefinitionSummary
        $AllProperties = ("id", "uniqueName", "description", "parentName", "executor", "arguments")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uniqueName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'uniqueName' missing."
        } else {
            $UniqueName = $JsonParameters.PSobject.Properties["uniqueName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "parentName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'parentName' missing."
        } else {
            $ParentName = $JsonParameters.PSobject.Properties["parentName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "executor"))) {
            throw "Error! JSON cannot be serialized due to the required property 'executor' missing."
        } else {
            $Executor = $JsonParameters.PSobject.Properties["executor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "arguments"))) {
            throw "Error! JSON cannot be serialized due to the required property 'arguments' missing."
        } else {
            $Arguments = $JsonParameters.PSobject.Properties["arguments"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "uniqueName" = ${UniqueName}
            "description" = ${Description}
            "parentName" = ${ParentName}
            "executor" = ${Executor}
            "arguments" = ${Arguments}
        }

        return $PSO
    }

}

