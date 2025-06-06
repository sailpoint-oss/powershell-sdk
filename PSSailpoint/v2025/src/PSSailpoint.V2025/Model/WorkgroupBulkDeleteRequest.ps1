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

.PARAMETER Ids
List of IDs of Governance Groups to be deleted.
.OUTPUTS

WorkgroupBulkDeleteRequest<PSCustomObject>
#>

function Initialize-V2025WorkgroupBulkDeleteRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Ids}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025WorkgroupBulkDeleteRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ids" = ${Ids}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkgroupBulkDeleteRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkgroupBulkDeleteRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkgroupBulkDeleteRequest<PSCustomObject>
#>
function ConvertFrom-V2025JsonToWorkgroupBulkDeleteRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025WorkgroupBulkDeleteRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025WorkgroupBulkDeleteRequest
        $AllProperties = ("ids")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ids"))) { #optional property not found
            $Ids = $null
        } else {
            $Ids = $JsonParameters.PSobject.Properties["ids"].value
        }

        $PSO = [PSCustomObject]@{
            "ids" = ${Ids}
        }

        return $PSO
    }

}

