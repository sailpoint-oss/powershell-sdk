#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

This represents sources to be created of same type.

.PARAMETER Name
Source's human-readable name.
.PARAMETER Description
Source's human-readable description.
.PARAMETER ConnectorAttributes
Connector specific configuration. This configuration will differ from type to type.
.OUTPUTS

MultiHostIntegrationsCreateSources<PSCustomObject>
#>

function Initialize-BetaMultiHostIntegrationsCreateSources {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ConnectorAttributes}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaMultiHostIntegrationsCreateSources' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "connectorAttributes" = ${ConnectorAttributes}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MultiHostIntegrationsCreateSources<PSCustomObject>

.DESCRIPTION

Convert from JSON to MultiHostIntegrationsCreateSources<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MultiHostIntegrationsCreateSources<PSCustomObject>
#>
function ConvertFrom-BetaJsonToMultiHostIntegrationsCreateSources {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaMultiHostIntegrationsCreateSources' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaMultiHostIntegrationsCreateSources
        $AllProperties = ("name", "description", "connectorAttributes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connectorAttributes"))) { #optional property not found
            $ConnectorAttributes = $null
        } else {
            $ConnectorAttributes = $JsonParameters.PSobject.Properties["connectorAttributes"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "connectorAttributes" = ${ConnectorAttributes}
        }

        return $PSO
    }

}
