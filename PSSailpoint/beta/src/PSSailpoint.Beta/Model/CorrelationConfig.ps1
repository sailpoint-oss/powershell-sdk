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

Source configuration information that is used by correlation process.

.PARAMETER Id
The ID of the correlation configuration.
.PARAMETER Name
The name of the correlation configuration.
.PARAMETER AttributeAssignments
The list of attribute assignments of the correlation configuration.
.OUTPUTS

CorrelationConfig<PSCustomObject>
#>

function Initialize-BetaCorrelationConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AttributeAssignments}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaCorrelationConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "attributeAssignments" = ${AttributeAssignments}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CorrelationConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to CorrelationConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CorrelationConfig<PSCustomObject>
#>
function ConvertFrom-BetaJsonToCorrelationConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaCorrelationConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaCorrelationConfig
        $AllProperties = ("id", "name", "attributeAssignments")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeAssignments"))) { #optional property not found
            $AttributeAssignments = $null
        } else {
            $AttributeAssignments = $JsonParameters.PSobject.Properties["attributeAssignments"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "attributeAssignments" = ${AttributeAssignments}
        }

        return $PSO
    }

}

