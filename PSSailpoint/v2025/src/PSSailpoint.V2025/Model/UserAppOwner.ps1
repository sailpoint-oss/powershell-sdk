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

.PARAMETER Id
The identity ID
.PARAMETER Type
It will always be ""IDENTITY""
.PARAMETER Name
The identity name
.PARAMETER Alias
The identity alias
.OUTPUTS

UserAppOwner<PSCustomObject>
#>

function Initialize-V2025UserAppOwner {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Alias}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025UserAppOwner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
            "name" = ${Name}
            "alias" = ${Alias}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UserAppOwner<PSCustomObject>

.DESCRIPTION

Convert from JSON to UserAppOwner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UserAppOwner<PSCustomObject>
#>
function ConvertFrom-V2025JsonToUserAppOwner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025UserAppOwner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025UserAppOwner
        $AllProperties = ("id", "type", "name", "alias")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "alias"))) { #optional property not found
            $Alias = $null
        } else {
            $Alias = $JsonParameters.PSobject.Properties["alias"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
            "name" = ${Name}
            "alias" = ${Alias}
        }

        return $PSO
    }

}

