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

.PARAMETER Config
No description available.
.PARAMETER DataSourceType
DataSourceType is a FormElementDataSourceType value STATIC FormElementDataSourceTypeStatic INTERNAL FormElementDataSourceTypeInternal SEARCH FormElementDataSourceTypeSearch FORM_INPUT FormElementDataSourceTypeFormInput
.OUTPUTS

FormElementDynamicDataSource<PSCustomObject>
#>

function Initialize-V2024FormElementDynamicDataSource {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Config},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("STATIC", "INTERNAL", "SEARCH", "FORM_INPUT")]
        [String]
        ${DataSourceType}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024FormElementDynamicDataSource' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "config" = ${Config}
            "dataSourceType" = ${DataSourceType}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FormElementDynamicDataSource<PSCustomObject>

.DESCRIPTION

Convert from JSON to FormElementDynamicDataSource<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FormElementDynamicDataSource<PSCustomObject>
#>
function ConvertFrom-V2024JsonToFormElementDynamicDataSource {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024FormElementDynamicDataSource' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024FormElementDynamicDataSource
        $AllProperties = ("config", "dataSourceType")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "config"))) { #optional property not found
            $Config = $null
        } else {
            $Config = $JsonParameters.PSobject.Properties["config"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dataSourceType"))) { #optional property not found
            $DataSourceType = $null
        } else {
            $DataSourceType = $JsonParameters.PSobject.Properties["dataSourceType"].value
        }

        $PSO = [PSCustomObject]@{
            "config" = ${Config}
            "dataSourceType" = ${DataSourceType}
        }

        return $PSO
    }

}
