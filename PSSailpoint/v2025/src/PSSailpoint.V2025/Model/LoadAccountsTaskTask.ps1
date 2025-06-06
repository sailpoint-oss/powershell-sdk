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
System-generated unique ID of the task this taskStatus represents
.PARAMETER Type
Type of task this task represents
.PARAMETER Name
The name of the aggregation process
.PARAMETER Description
The description of the task
.PARAMETER Launcher
The user who initiated the task
.PARAMETER Created
The Task creation date
.PARAMETER Launched
The task start date
.PARAMETER Completed
The task completion date
.PARAMETER CompletionStatus
Task completion status.
.PARAMETER ParentName
Name of the parent task if exists.
.PARAMETER Messages
List of the messages dedicated to the report.  From task definition perspective here usually should be warnings or errors.
.PARAMETER Progress
Current task state.
.PARAMETER Attributes
No description available.
.PARAMETER Returns
Return values from the task
.OUTPUTS

LoadAccountsTaskTask<PSCustomObject>
#>

function Initialize-V2025LoadAccountsTaskTask {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Launcher},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Launched},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Completed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SUCCESS", "WARNING", "ERROR", "TERMINATED", "TEMP_ERROR")]
        [String]
        ${CompletionStatus},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ParentName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Messages},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Progress},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Returns}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025LoadAccountsTaskTask' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
            "name" = ${Name}
            "description" = ${Description}
            "launcher" = ${Launcher}
            "created" = ${Created}
            "launched" = ${Launched}
            "completed" = ${Completed}
            "completionStatus" = ${CompletionStatus}
            "parentName" = ${ParentName}
            "messages" = ${Messages}
            "progress" = ${Progress}
            "attributes" = ${Attributes}
            "returns" = ${Returns}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LoadAccountsTaskTask<PSCustomObject>

.DESCRIPTION

Convert from JSON to LoadAccountsTaskTask<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LoadAccountsTaskTask<PSCustomObject>
#>
function ConvertFrom-V2025JsonToLoadAccountsTaskTask {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025LoadAccountsTaskTask' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025LoadAccountsTaskTask
        $AllProperties = ("id", "type", "name", "description", "launcher", "created", "launched", "completed", "completionStatus", "parentName", "messages", "progress", "attributes", "returns")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "launcher"))) { #optional property not found
            $Launcher = $null
        } else {
            $Launcher = $JsonParameters.PSobject.Properties["launcher"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "launched"))) { #optional property not found
            $Launched = $null
        } else {
            $Launched = $JsonParameters.PSobject.Properties["launched"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completed"))) { #optional property not found
            $Completed = $null
        } else {
            $Completed = $JsonParameters.PSobject.Properties["completed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completionStatus"))) { #optional property not found
            $CompletionStatus = $null
        } else {
            $CompletionStatus = $JsonParameters.PSobject.Properties["completionStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "parentName"))) { #optional property not found
            $ParentName = $null
        } else {
            $ParentName = $JsonParameters.PSobject.Properties["parentName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "messages"))) { #optional property not found
            $Messages = $null
        } else {
            $Messages = $JsonParameters.PSobject.Properties["messages"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "progress"))) { #optional property not found
            $Progress = $null
        } else {
            $Progress = $JsonParameters.PSobject.Properties["progress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "returns"))) { #optional property not found
            $Returns = $null
        } else {
            $Returns = $JsonParameters.PSobject.Properties["returns"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
            "name" = ${Name}
            "description" = ${Description}
            "launcher" = ${Launcher}
            "created" = ${Created}
            "launched" = ${Launched}
            "completed" = ${Completed}
            "completionStatus" = ${CompletionStatus}
            "parentName" = ${ParentName}
            "messages" = ${Messages}
            "progress" = ${Progress}
            "attributes" = ${Attributes}
            "returns" = ${Returns}
        }

        return $PSO
    }

}

