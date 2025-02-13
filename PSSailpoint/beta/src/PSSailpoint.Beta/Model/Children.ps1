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

.PARAMETER Operator
No description available.
.PARAMETER Attribute
No description available.
.PARAMETER Value
No description available.
.PARAMETER Children
No description available.
.OUTPUTS

Children<PSCustomObject>
#>

function Initialize-BetaChildren {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Operator},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Attribute},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Value},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Children}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaChildren' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "operator" = ${Operator}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "children" = ${Children}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Children<PSCustomObject>

.DESCRIPTION

Convert from JSON to Children<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Children<PSCustomObject>
#>
function ConvertFrom-BetaJsonToChildren {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaChildren' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaChildren
        $AllProperties = ("operator", "attribute", "value", "children")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operator"))) { #optional property not found
            $Operator = $null
        } else {
            $Operator = $JsonParameters.PSobject.Properties["operator"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attribute"))) { #optional property not found
            $Attribute = $null
        } else {
            $Attribute = $JsonParameters.PSobject.Properties["attribute"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "children"))) { #optional property not found
            $Children = $null
        } else {
            $Children = $JsonParameters.PSobject.Properties["children"].value
        }

        $PSO = [PSCustomObject]@{
            "operator" = ${Operator}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "children" = ${Children}
        }

        return $PSO
    }

}

