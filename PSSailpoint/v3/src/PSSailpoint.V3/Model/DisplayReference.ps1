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

.PARAMETER Id
The unique ID of the referenced object.
.PARAMETER Name
The human readable name of the referenced object.
.PARAMETER DisplayName
No description available.
.OUTPUTS

DisplayReference<PSCustomObject>
#>

function Initialize-DisplayReference {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V3 => DisplayReference' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "displayName" = ${DisplayName}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DisplayReference<PSCustomObject>

.DESCRIPTION

Convert from JSON to DisplayReference<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DisplayReference<PSCustomObject>
#>
function ConvertFrom-JsonToDisplayReference {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V3 => DisplayReference' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DisplayReference
        $AllProperties = ("id", "name", "displayName")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "displayName" = ${DisplayName}
        }

        return $PSO
    }

}
