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

.PARAMETER Format
An optional value to denote which ISO 3166 format to return. Valid values are:   `alpha2` - Two-character country code (e.g., ""US""); this is the default value if no format is supplied   `alpha3` - Three-character country code (e.g., ""USA"")   `numeric` - The numeric country code (e.g., ""840"") 
.PARAMETER RequiresPeriodicRefresh
A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process
.PARAMETER VarInput
This is an optional attribute that can explicitly define the input data which will be fed into the transform logic. If input is not provided, the transform will take its input from the source and attribute combination configured via the UI.
.OUTPUTS

ISO3166<PSCustomObject>
#>

function Initialize-V2024ISO3166 {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Format},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequiresPeriodicRefresh} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${VarInput}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024ISO3166' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "format" = ${Format}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
            "input" = ${VarInput}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ISO3166<PSCustomObject>

.DESCRIPTION

Convert from JSON to ISO3166<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ISO3166<PSCustomObject>
#>
function ConvertFrom-V2024JsonToISO3166 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024ISO3166' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ISO3166
        $AllProperties = ("format", "requiresPeriodicRefresh", "input")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "format"))) { #optional property not found
            $Format = $null
        } else {
            $Format = $JsonParameters.PSobject.Properties["format"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requiresPeriodicRefresh"))) { #optional property not found
            $RequiresPeriodicRefresh = $null
        } else {
            $RequiresPeriodicRefresh = $JsonParameters.PSobject.Properties["requiresPeriodicRefresh"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "input"))) { #optional property not found
            $VarInput = $null
        } else {
            $VarInput = $JsonParameters.PSobject.Properties["input"].value
        }

        $PSO = [PSCustomObject]@{
            "format" = ${Format}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
            "input" = ${VarInput}
        }

        return $PSO
    }

}
