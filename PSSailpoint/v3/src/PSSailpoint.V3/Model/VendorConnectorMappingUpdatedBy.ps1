#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

An object representing the nullable identifier of the user who last updated the mapping.

.PARAMETER String
The identifier of the user who last updated the mapping, if available.
.PARAMETER Valid
A flag indicating if the 'String' field is set and valid.
.OUTPUTS

VendorConnectorMappingUpdatedBy<PSCustomObject>
#>

function Initialize-VendorConnectorMappingUpdatedBy {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${String},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Valid} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V3 => VendorConnectorMappingUpdatedBy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "String" = ${String}
            "Valid" = ${Valid}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VendorConnectorMappingUpdatedBy<PSCustomObject>

.DESCRIPTION

Convert from JSON to VendorConnectorMappingUpdatedBy<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VendorConnectorMappingUpdatedBy<PSCustomObject>
#>
function ConvertFrom-JsonToVendorConnectorMappingUpdatedBy {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V3 => VendorConnectorMappingUpdatedBy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in VendorConnectorMappingUpdatedBy
        $AllProperties = ("String", "Valid")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "String"))) { #optional property not found
            $String = $null
        } else {
            $String = $JsonParameters.PSobject.Properties["String"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Valid"))) { #optional property not found
            $Valid = $null
        } else {
            $Valid = $JsonParameters.PSobject.Properties["Valid"].value
        }

        $PSO = [PSCustomObject]@{
            "String" = ${String}
            "Valid" = ${Valid}
        }

        return $PSO
    }

}
