#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Description
A description of the entitlement
.PARAMETER Attribute
The name of the entitlement attribute
.PARAMETER Value
The value of the entitlement
.OUTPUTS

BaseEntitlementAllOf<PSCustomObject>
#>

function Initialize-BaseEntitlementAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Attribute},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => BaseEntitlementAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "attribute" = ${Attribute}
            "value" = ${Value}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BaseEntitlementAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to BaseEntitlementAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BaseEntitlementAllOf<PSCustomObject>
#>
function ConvertFrom-JsonToBaseEntitlementAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => BaseEntitlementAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BaseEntitlementAllOf
        $AllProperties = ("description", "attribute", "value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
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

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "attribute" = ${Attribute}
            "value" = ${Value}
        }

        return $PSO
    }

}

