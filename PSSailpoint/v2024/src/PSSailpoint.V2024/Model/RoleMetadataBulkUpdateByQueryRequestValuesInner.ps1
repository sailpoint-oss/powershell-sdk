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

.PARAMETER AttributeKey
the key of metadata attribute
.PARAMETER AttributeValue
the values of attribute to be updated
.OUTPUTS

RoleMetadataBulkUpdateByQueryRequestValuesInner<PSCustomObject>
#>

function Initialize-V2024RoleMetadataBulkUpdateByQueryRequestValuesInner {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttributeKey},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${AttributeValue}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024RoleMetadataBulkUpdateByQueryRequestValuesInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "attributeKey" = ${AttributeKey}
            "attributeValue" = ${AttributeValue}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleMetadataBulkUpdateByQueryRequestValuesInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleMetadataBulkUpdateByQueryRequestValuesInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleMetadataBulkUpdateByQueryRequestValuesInner<PSCustomObject>
#>
function ConvertFrom-V2024JsonToRoleMetadataBulkUpdateByQueryRequestValuesInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024RoleMetadataBulkUpdateByQueryRequestValuesInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024RoleMetadataBulkUpdateByQueryRequestValuesInner
        $AllProperties = ("attributeKey", "attributeValue")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeKey"))) { #optional property not found
            $AttributeKey = $null
        } else {
            $AttributeKey = $JsonParameters.PSobject.Properties["attributeKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeValue"))) { #optional property not found
            $AttributeValue = $null
        } else {
            $AttributeValue = $JsonParameters.PSobject.Properties["attributeValue"].value
        }

        $PSO = [PSCustomObject]@{
            "attributeKey" = ${AttributeKey}
            "attributeValue" = ${AttributeValue}
        }

        return $PSO
    }

}
