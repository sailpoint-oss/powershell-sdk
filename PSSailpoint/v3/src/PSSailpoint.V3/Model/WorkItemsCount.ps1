#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Count
The count of work items
.OUTPUTS

WorkItemsCount<PSCustomObject>
#>

function Initialize-WorkItemsCount {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V3 => WorkItemsCount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "count" = ${Count}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkItemsCount<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkItemsCount<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkItemsCount<PSCustomObject>
#>
function ConvertFrom-JsonToWorkItemsCount {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V3 => WorkItemsCount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WorkItemsCount
        $AllProperties = ("count")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "count"))) { #optional property not found
            $Count = $null
        } else {
            $Count = $JsonParameters.PSobject.Properties["count"].value
        }

        $PSO = [PSCustomObject]@{
            "count" = ${Count}
        }

        return $PSO
    }

}
