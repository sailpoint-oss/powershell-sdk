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

.PARAMETER Query
No description available.
.PARAMETER Operation
Operation to perform on the attributes in the bulk update request.
.PARAMETER ReplaceScope
The choice of update scope.
.PARAMETER Values
The metadata to be updated, including attribute and values.
.OUTPUTS

EntitlementAttributeBulkUpdateQueryRequest<PSCustomObject>
#>

function Initialize-V2025EntitlementAttributeBulkUpdateQueryRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Query},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ADD", "REMOVE", "REPLACE")]
        [String]
        ${Operation},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ALL", "ATTRIBUTE")]
        [String]
        ${ReplaceScope},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Values}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025EntitlementAttributeBulkUpdateQueryRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "query" = ${Query}
            "operation" = ${Operation}
            "replaceScope" = ${ReplaceScope}
            "values" = ${Values}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EntitlementAttributeBulkUpdateQueryRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to EntitlementAttributeBulkUpdateQueryRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EntitlementAttributeBulkUpdateQueryRequest<PSCustomObject>
#>
function ConvertFrom-V2025JsonToEntitlementAttributeBulkUpdateQueryRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025EntitlementAttributeBulkUpdateQueryRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025EntitlementAttributeBulkUpdateQueryRequest
        $AllProperties = ("query", "operation", "replaceScope", "values")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "query"))) { #optional property not found
            $Query = $null
        } else {
            $Query = $JsonParameters.PSobject.Properties["query"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operation"))) { #optional property not found
            $Operation = $null
        } else {
            $Operation = $JsonParameters.PSobject.Properties["operation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "replaceScope"))) { #optional property not found
            $ReplaceScope = $null
        } else {
            $ReplaceScope = $JsonParameters.PSobject.Properties["replaceScope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "values"))) { #optional property not found
            $Values = $null
        } else {
            $Values = $JsonParameters.PSobject.Properties["values"].value
        }

        $PSO = [PSCustomObject]@{
            "query" = ${Query}
            "operation" = ${Operation}
            "replaceScope" = ${ReplaceScope}
            "values" = ${Values}
        }

        return $PSO
    }

}

