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

Specification of source attribute sync mapping configuration for an identity attribute

.PARAMETER Name
Name of the identity attribute
.PARAMETER DisplayName
Display name of the identity attribute
.PARAMETER Enabled
Determines whether or not the attribute is enabled for synchronization
.PARAMETER Target
Name of the source account attribute to which the identity attribute value will be synchronized if enabled
.OUTPUTS

AttrSyncSourceAttributeConfig<PSCustomObject>
#>

function Initialize-V2024AttrSyncSourceAttributeConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Enabled},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Target}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024AttrSyncSourceAttributeConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$DisplayName) {
            throw "invalid value for 'DisplayName', 'DisplayName' cannot be null."
        }

        if (!$Enabled) {
            throw "invalid value for 'Enabled', 'Enabled' cannot be null."
        }

        if (!$Target) {
            throw "invalid value for 'Target', 'Target' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "displayName" = ${DisplayName}
            "enabled" = ${Enabled}
            "target" = ${Target}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AttrSyncSourceAttributeConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to AttrSyncSourceAttributeConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AttrSyncSourceAttributeConfig<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAttrSyncSourceAttributeConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024AttrSyncSourceAttributeConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AttrSyncSourceAttributeConfig
        $AllProperties = ("name", "displayName", "enabled", "target")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'displayName' missing."
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'enabled' missing."
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "target"))) {
            throw "Error! JSON cannot be serialized due to the required property 'target' missing."
        } else {
            $Target = $JsonParameters.PSobject.Properties["target"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "displayName" = ${DisplayName}
            "enabled" = ${Enabled}
            "target" = ${Target}
        }

        return $PSO
    }

}
