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
Workflow execution ID.
.PARAMETER WorkflowId
Workflow ID.
.PARAMETER RequestId
Backend ID that tracks a workflow request in the system. Provide this ID in a customer support ticket for debugging purposes.
.PARAMETER StartTime
Date/time when the workflow started.
.PARAMETER CloseTime
Date/time when the workflow ended.
.PARAMETER Status
Workflow execution status.
.OUTPUTS

WorkflowExecution<PSCustomObject>
#>

function Initialize-V2025WorkflowExecution {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WorkflowId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequestId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${StartTime},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CloseTime},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Completed", "Failed", "Canceled", "Running", "Queued")]
        [String]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025WorkflowExecution' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "workflowId" = ${WorkflowId}
            "requestId" = ${RequestId}
            "startTime" = ${StartTime}
            "closeTime" = ${CloseTime}
            "status" = ${Status}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowExecution<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowExecution<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowExecution<PSCustomObject>
#>
function ConvertFrom-V2025JsonToWorkflowExecution {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025WorkflowExecution' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025WorkflowExecution
        $AllProperties = ("id", "workflowId", "requestId", "startTime", "closeTime", "status")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "workflowId"))) { #optional property not found
            $WorkflowId = $null
        } else {
            $WorkflowId = $JsonParameters.PSobject.Properties["workflowId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestId"))) { #optional property not found
            $RequestId = $null
        } else {
            $RequestId = $JsonParameters.PSobject.Properties["requestId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "startTime"))) { #optional property not found
            $StartTime = $null
        } else {
            $StartTime = $JsonParameters.PSobject.Properties["startTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "closeTime"))) { #optional property not found
            $CloseTime = $null
        } else {
            $CloseTime = $JsonParameters.PSobject.Properties["closeTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "workflowId" = ${WorkflowId}
            "requestId" = ${RequestId}
            "startTime" = ${StartTime}
            "closeTime" = ${CloseTime}
            "status" = ${Status}
        }

        return $PSO
    }

}

