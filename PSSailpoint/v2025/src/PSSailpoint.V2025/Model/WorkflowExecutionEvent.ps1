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

.PARAMETER Type
The type of event
.PARAMETER Timestamp
The date-time when the event occurred
.PARAMETER Attributes
Additional attributes associated with the event
.OUTPUTS

WorkflowExecutionEvent<PSCustomObject>
#>

function Initialize-V2025WorkflowExecutionEvent {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("WorkflowExecutionScheduled", "WorkflowExecutionStarted", "WorkflowExecutionCompleted", "WorkflowExecutionFailed", "WorkflowTaskScheduled", "WorkflowTaskStarted", "WorkflowTaskCompleted", "WorkflowTaskFailed", "ActivityTaskScheduled", "ActivityTaskStarted", "ActivityTaskCompleted", "ActivityTaskFailed", "StartChildWorkflowExecutionInitiated", "ChildWorkflowExecutionStarted", "ChildWorkflowExecutionCompleted", "ChildWorkflowExecutionFailed")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Timestamp},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Attributes}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025WorkflowExecutionEvent' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "timestamp" = ${Timestamp}
            "attributes" = ${Attributes}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowExecutionEvent<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowExecutionEvent<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowExecutionEvent<PSCustomObject>
#>
function ConvertFrom-V2025JsonToWorkflowExecutionEvent {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025WorkflowExecutionEvent' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025WorkflowExecutionEvent
        $AllProperties = ("type", "timestamp", "attributes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timestamp"))) { #optional property not found
            $Timestamp = $null
        } else {
            $Timestamp = $JsonParameters.PSobject.Properties["timestamp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "timestamp" = ${Timestamp}
            "attributes" = ${Attributes}
        }

        return $PSO
    }

}

