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
Unique ID of the common access item
.PARAMETER Access
No description available.
.PARAMETER Status
CONFIRMED or DENIED
.PARAMETER CommonAccessType
No description available.
.PARAMETER ReviewedByUser
true if user has confirmed or denied status
.PARAMETER CreatedByUser
No description available.
.OUTPUTS

CommonAccessResponse<PSCustomObject>
#>

function Initialize-V2025CommonAccessResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Access},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CommonAccessType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ReviewedByUser},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${CreatedByUser} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025CommonAccessResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "access" = ${Access}
            "status" = ${Status}
            "commonAccessType" = ${CommonAccessType}
            "reviewedByUser" = ${ReviewedByUser}
            "createdByUser" = ${CreatedByUser}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CommonAccessResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to CommonAccessResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CommonAccessResponse<PSCustomObject>
#>
function ConvertFrom-V2025JsonToCommonAccessResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025CommonAccessResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025CommonAccessResponse
        $AllProperties = ("id", "access", "status", "commonAccessType", "lastUpdated", "reviewedByUser", "lastReviewed", "createdByUser")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "access"))) { #optional property not found
            $Access = $null
        } else {
            $Access = $JsonParameters.PSobject.Properties["access"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "commonAccessType"))) { #optional property not found
            $CommonAccessType = $null
        } else {
            $CommonAccessType = $JsonParameters.PSobject.Properties["commonAccessType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUpdated"))) { #optional property not found
            $LastUpdated = $null
        } else {
            $LastUpdated = $JsonParameters.PSobject.Properties["lastUpdated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reviewedByUser"))) { #optional property not found
            $ReviewedByUser = $null
        } else {
            $ReviewedByUser = $JsonParameters.PSobject.Properties["reviewedByUser"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastReviewed"))) { #optional property not found
            $LastReviewed = $null
        } else {
            $LastReviewed = $JsonParameters.PSobject.Properties["lastReviewed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdByUser"))) { #optional property not found
            $CreatedByUser = $null
        } else {
            $CreatedByUser = $JsonParameters.PSobject.Properties["createdByUser"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "access" = ${Access}
            "status" = ${Status}
            "commonAccessType" = ${CommonAccessType}
            "lastUpdated" = ${LastUpdated}
            "reviewedByUser" = ${ReviewedByUser}
            "lastReviewed" = ${LastReviewed}
            "createdByUser" = ${CreatedByUser}
        }

        return $PSO
    }

}

