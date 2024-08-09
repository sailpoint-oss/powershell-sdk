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

.PARAMETER Values
An array of attributes to evaluate for existence.
.PARAMETER IgnoreErrors
a true or false value representing to move on to the next option if an error (like an Null Pointer Exception) were to occur.
.PARAMETER RequiresPeriodicRefresh
A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process
.OUTPUTS

FirstValid<PSCustomObject>
#>

function Initialize-V2024FirstValid {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Values},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IgnoreErrors} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequiresPeriodicRefresh} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024FirstValid' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Values) {
            throw "invalid value for 'Values', 'Values' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "values" = ${Values}
            "ignoreErrors" = ${IgnoreErrors}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FirstValid<PSCustomObject>

.DESCRIPTION

Convert from JSON to FirstValid<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FirstValid<PSCustomObject>
#>
function ConvertFrom-V2024JsonToFirstValid {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024FirstValid' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024FirstValid
        $AllProperties = ("values", "ignoreErrors", "requiresPeriodicRefresh")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'values' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "values"))) {
            throw "Error! JSON cannot be serialized due to the required property 'values' missing."
        } else {
            $Values = $JsonParameters.PSobject.Properties["values"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ignoreErrors"))) { #optional property not found
            $IgnoreErrors = $null
        } else {
            $IgnoreErrors = $JsonParameters.PSobject.Properties["ignoreErrors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requiresPeriodicRefresh"))) { #optional property not found
            $RequiresPeriodicRefresh = $null
        } else {
            $RequiresPeriodicRefresh = $JsonParameters.PSobject.Properties["requiresPeriodicRefresh"].value
        }

        $PSO = [PSCustomObject]@{
            "values" = ${Values}
            "ignoreErrors" = ${IgnoreErrors}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
        }

        return $PSO
    }

}
