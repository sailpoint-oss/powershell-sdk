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

The map of steps that the workflow will execute.

.PARAMETER Start
The name of the starting step.
.PARAMETER Steps
One or more step objects that comprise this workflow.  Please see the Workflow documentation to see the JSON schema for each step type.
.OUTPUTS

WorkflowDefinition<PSCustomObject>
#>

function Initialize-V2024WorkflowDefinition {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Start},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Steps}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024WorkflowDefinition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "start" = ${Start}
            "steps" = ${Steps}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowDefinition<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowDefinition<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowDefinition<PSCustomObject>
#>
function ConvertFrom-V2024JsonToWorkflowDefinition {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024WorkflowDefinition' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024WorkflowDefinition
        $AllProperties = ("start", "steps")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "start"))) { #optional property not found
            $Start = $null
        } else {
            $Start = $JsonParameters.PSobject.Properties["start"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "steps"))) { #optional property not found
            $Steps = $null
        } else {
            $Steps = $JsonParameters.PSobject.Properties["steps"].value
        }

        $PSO = [PSCustomObject]@{
            "start" = ${Start}
            "steps" = ${Steps}
        }

        return $PSO
    }

}
