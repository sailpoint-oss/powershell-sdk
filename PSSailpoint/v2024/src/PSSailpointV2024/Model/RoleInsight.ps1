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
Insight id
.PARAMETER NumberOfUpdates
Total number of updates for this role
.PARAMETER CreatedDate
The date-time insights were last created for this role.
.PARAMETER ModifiedDate
The date-time insights were last modified for this role.
.PARAMETER Role
No description available.
.PARAMETER Insight
No description available.
.OUTPUTS

RoleInsight<PSCustomObject>
#>

function Initialize-V2024RoleInsight {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${NumberOfUpdates},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ModifiedDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Role},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Insight}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024RoleInsight' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "numberOfUpdates" = ${NumberOfUpdates}
            "createdDate" = ${CreatedDate}
            "modifiedDate" = ${ModifiedDate}
            "role" = ${Role}
            "insight" = ${Insight}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleInsight<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleInsight<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleInsight<PSCustomObject>
#>
function ConvertFrom-V2024JsonToRoleInsight {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024RoleInsight' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024RoleInsight
        $AllProperties = ("id", "numberOfUpdates", "createdDate", "modifiedDate", "role", "insight")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "numberOfUpdates"))) { #optional property not found
            $NumberOfUpdates = $null
        } else {
            $NumberOfUpdates = $JsonParameters.PSobject.Properties["numberOfUpdates"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdDate"))) { #optional property not found
            $CreatedDate = $null
        } else {
            $CreatedDate = $JsonParameters.PSobject.Properties["createdDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modifiedDate"))) { #optional property not found
            $ModifiedDate = $null
        } else {
            $ModifiedDate = $JsonParameters.PSobject.Properties["modifiedDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "role"))) { #optional property not found
            $Role = $null
        } else {
            $Role = $JsonParameters.PSobject.Properties["role"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "insight"))) { #optional property not found
            $Insight = $null
        } else {
            $Insight = $JsonParameters.PSobject.Properties["insight"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "numberOfUpdates" = ${NumberOfUpdates}
            "createdDate" = ${CreatedDate}
            "modifiedDate" = ${ModifiedDate}
            "role" = ${Role}
            "insight" = ${Insight}
        }

        return $PSO
    }

}
