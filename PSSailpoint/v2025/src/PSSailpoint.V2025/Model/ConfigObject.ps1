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

Config export and import format for individual object configurations.

.PARAMETER Version
Current version of configuration object.
.PARAMETER Self
No description available.
.PARAMETER Object
Object details. Format dependant on the object type.
.OUTPUTS

ConfigObject<PSCustomObject>
#>

function Initialize-V2025ConfigObject {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Version},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Self},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Object}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025ConfigObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "version" = ${Version}
            "self" = ${Self}
            "object" = ${Object}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConfigObject<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConfigObject<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConfigObject<PSCustomObject>
#>
function ConvertFrom-V2025JsonToConfigObject {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025ConfigObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025ConfigObject
        $AllProperties = ("version", "self", "object")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "version"))) { #optional property not found
            $Version = $null
        } else {
            $Version = $JsonParameters.PSobject.Properties["version"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "object"))) { #optional property not found
            $Object = $null
        } else {
            $Object = $JsonParameters.PSobject.Properties["object"].value
        }

        $PSO = [PSCustomObject]@{
            "version" = ${Version}
            "self" = ${Self}
            "object" = ${Object}
        }

        return $PSO
    }

}

