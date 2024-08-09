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

No description available.

.PARAMETER MaxIdleTime
The maximum time in minutes a session can be idle.
.PARAMETER RememberMe
Denotes if 'remember me' is enabled.
.PARAMETER MaxSessionTime
The maximum allowable session time in minutes.
.OUTPUTS

SessionConfiguration<PSCustomObject>
#>

function Initialize-SessionConfiguration {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxIdleTime},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RememberMe} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxSessionTime}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => SessionConfiguration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "maxIdleTime" = ${MaxIdleTime}
            "rememberMe" = ${RememberMe}
            "maxSessionTime" = ${MaxSessionTime}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SessionConfiguration<PSCustomObject>

.DESCRIPTION

Convert from JSON to SessionConfiguration<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SessionConfiguration<PSCustomObject>
#>
function ConvertFrom-JsonToSessionConfiguration {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => SessionConfiguration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SessionConfiguration
        $AllProperties = ("maxIdleTime", "rememberMe", "maxSessionTime")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxIdleTime"))) { #optional property not found
            $MaxIdleTime = $null
        } else {
            $MaxIdleTime = $JsonParameters.PSobject.Properties["maxIdleTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rememberMe"))) { #optional property not found
            $RememberMe = $null
        } else {
            $RememberMe = $JsonParameters.PSobject.Properties["rememberMe"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxSessionTime"))) { #optional property not found
            $MaxSessionTime = $null
        } else {
            $MaxSessionTime = $JsonParameters.PSobject.Properties["maxSessionTime"].value
        }

        $PSO = [PSCustomObject]@{
            "maxIdleTime" = ${MaxIdleTime}
            "rememberMe" = ${RememberMe}
            "maxSessionTime" = ${MaxSessionTime}
        }

        return $PSO
    }

}
