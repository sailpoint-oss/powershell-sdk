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

.PARAMETER FormDefinitionId
FormDefinitionID is a unique guid identifying this form definition
.OUTPUTS

FormDefinitionDynamicSchemaRequestAttributes<PSCustomObject>
#>

function Initialize-V2024FormDefinitionDynamicSchemaRequestAttributes {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FormDefinitionId}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024FormDefinitionDynamicSchemaRequestAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "formDefinitionId" = ${FormDefinitionId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FormDefinitionDynamicSchemaRequestAttributes<PSCustomObject>

.DESCRIPTION

Convert from JSON to FormDefinitionDynamicSchemaRequestAttributes<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FormDefinitionDynamicSchemaRequestAttributes<PSCustomObject>
#>
function ConvertFrom-V2024JsonToFormDefinitionDynamicSchemaRequestAttributes {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024FormDefinitionDynamicSchemaRequestAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024FormDefinitionDynamicSchemaRequestAttributes
        $AllProperties = ("formDefinitionId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formDefinitionId"))) { #optional property not found
            $FormDefinitionId = $null
        } else {
            $FormDefinitionId = $JsonParameters.PSobject.Properties["formDefinitionId"].value
        }

        $PSO = [PSCustomObject]@{
            "formDefinitionId" = ${FormDefinitionId}
        }

        return $PSO
    }

}
