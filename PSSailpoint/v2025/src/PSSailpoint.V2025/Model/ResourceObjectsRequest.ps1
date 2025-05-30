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

Request model for peek resource objects from source connectors.

.PARAMETER ObjectType
The type of resource objects to iterate over.
.PARAMETER MaxCount
The maximum number of resource objects to iterate over and return.
.OUTPUTS

ResourceObjectsRequest<PSCustomObject>
#>

function Initialize-V2025ResourceObjectsRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectType} = "account",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxCount} = 25
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025ResourceObjectsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "objectType" = ${ObjectType}
            "maxCount" = ${MaxCount}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResourceObjectsRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResourceObjectsRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResourceObjectsRequest<PSCustomObject>
#>
function ConvertFrom-V2025JsonToResourceObjectsRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025ResourceObjectsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025ResourceObjectsRequest
        $AllProperties = ("objectType", "maxCount")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "objectType"))) { #optional property not found
            $ObjectType = $null
        } else {
            $ObjectType = $JsonParameters.PSobject.Properties["objectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxCount"))) { #optional property not found
            $MaxCount = $null
        } else {
            $MaxCount = $JsonParameters.PSobject.Properties["maxCount"].value
        }

        $PSO = [PSCustomObject]@{
            "objectType" = ${ObjectType}
            "maxCount" = ${MaxCount}
        }

        return $PSO
    }

}

