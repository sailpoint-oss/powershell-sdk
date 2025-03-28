#
# Identity Security Cloud V2025 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2025
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER UserName
The login name of the user
.PARAMETER SourceName
The display name of the source
.OUTPUTS

PasswordInfoQueryDTO<PSCustomObject>
#>

function Initialize-V2025PasswordInfoQueryDTO {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceName}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025PasswordInfoQueryDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "userName" = ${UserName}
            "sourceName" = ${SourceName}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PasswordInfoQueryDTO<PSCustomObject>

.DESCRIPTION

Convert from JSON to PasswordInfoQueryDTO<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PasswordInfoQueryDTO<PSCustomObject>
#>
function ConvertFrom-V2025JsonToPasswordInfoQueryDTO {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025PasswordInfoQueryDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025PasswordInfoQueryDTO
        $AllProperties = ("userName", "sourceName")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userName"))) { #optional property not found
            $UserName = $null
        } else {
            $UserName = $JsonParameters.PSobject.Properties["userName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceName"))) { #optional property not found
            $SourceName = $null
        } else {
            $SourceName = $JsonParameters.PSobject.Properties["sourceName"].value
        }

        $PSO = [PSCustomObject]@{
            "userName" = ${UserName}
            "sourceName" = ${SourceName}
        }

        return $PSO
    }

}

