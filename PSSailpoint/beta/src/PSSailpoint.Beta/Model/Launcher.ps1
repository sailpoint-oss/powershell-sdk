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

No description available.

.PARAMETER Id
ID of the Launcher
.PARAMETER Created
Date the Launcher was created
.PARAMETER Modified
Date the Launcher was last modified
.PARAMETER Owner
No description available.
.PARAMETER Name
Name of the Launcher, limited to 255 characters
.PARAMETER Description
Description of the Launcher, limited to 2000 characters
.PARAMETER Type
Launcher type
.PARAMETER Disabled
State of the Launcher
.PARAMETER Reference
No description available.
.PARAMETER Config
JSON configuration associated with this Launcher, restricted to a max size of 4KB 
.OUTPUTS

Launcher<PSCustomObject>
#>

function Initialize-BetaLauncher {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("INTERACTIVE_PROCESS")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Disabled},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Reference},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^\{\}$")]
        [String]
        ${Config}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaLauncher' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Created) {
            throw "invalid value for 'Created', 'Created' cannot be null."
        }

        if (!$Modified) {
            throw "invalid value for 'Modified', 'Modified' cannot be null."
        }

        if (!$Owner) {
            throw "invalid value for 'Owner', 'Owner' cannot be null."
        }

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Description) {
            throw "invalid value for 'Description', 'Description' cannot be null."
        }

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Disabled) {
            throw "invalid value for 'Disabled', 'Disabled' cannot be null."
        }

        if (!$Config) {
            throw "invalid value for 'Config', 'Config' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "created" = ${Created}
            "modified" = ${Modified}
            "owner" = ${Owner}
            "name" = ${Name}
            "description" = ${Description}
            "type" = ${Type}
            "disabled" = ${Disabled}
            "reference" = ${Reference}
            "config" = ${Config}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Launcher<PSCustomObject>

.DESCRIPTION

Convert from JSON to Launcher<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Launcher<PSCustomObject>
#>
function ConvertFrom-BetaJsonToLauncher {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaLauncher' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaLauncher
        $AllProperties = ("id", "created", "modified", "owner", "name", "description", "type", "disabled", "reference", "config")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created' missing."
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) {
            throw "Error! JSON cannot be serialized due to the required property 'modified' missing."
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) {
            throw "Error! JSON cannot be serialized due to the required property 'owner' missing."
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "disabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'disabled' missing."
        } else {
            $Disabled = $JsonParameters.PSobject.Properties["disabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "config"))) {
            throw "Error! JSON cannot be serialized due to the required property 'config' missing."
        } else {
            $Config = $JsonParameters.PSobject.Properties["config"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reference"))) { #optional property not found
            $Reference = $null
        } else {
            $Reference = $JsonParameters.PSobject.Properties["reference"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "created" = ${Created}
            "modified" = ${Modified}
            "owner" = ${Owner}
            "name" = ${Name}
            "description" = ${Description}
            "type" = ${Type}
            "disabled" = ${Disabled}
            "reference" = ${Reference}
            "config" = ${Config}
        }

        return $PSO
    }

}

