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

.PARAMETER Open
The count of open work items
.PARAMETER Completed
The count of completed work items
.PARAMETER Total
The count of total work items
.OUTPUTS

WorkItemsSummary<PSCustomObject>
#>

function Initialize-BetaWorkItemsSummary {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Open},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Completed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Total}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaWorkItemsSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "open" = ${Open}
            "completed" = ${Completed}
            "total" = ${Total}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkItemsSummary<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkItemsSummary<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkItemsSummary<PSCustomObject>
#>
function ConvertFrom-BetaJsonToWorkItemsSummary {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaWorkItemsSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaWorkItemsSummary
        $AllProperties = ("open", "completed", "total")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "open"))) { #optional property not found
            $Open = $null
        } else {
            $Open = $JsonParameters.PSobject.Properties["open"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completed"))) { #optional property not found
            $Completed = $null
        } else {
            $Completed = $JsonParameters.PSobject.Properties["completed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "total"))) { #optional property not found
            $Total = $null
        } else {
            $Total = $JsonParameters.PSobject.Properties["total"].value
        }

        $PSO = [PSCustomObject]@{
            "open" = ${Open}
            "completed" = ${Completed}
            "total" = ${Total}
        }

        return $PSO
    }

}

