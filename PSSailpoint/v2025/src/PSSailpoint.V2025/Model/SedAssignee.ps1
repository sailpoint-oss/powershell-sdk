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

Sed Assignee

.PARAMETER Type
Type of assignment When value is PERSONA, the value MUST be SOURCE_OWNER or ENTITLEMENT_OWNER IDENTITY SED_ASSIGNEE_IDENTITY_TYPE GROUP SED_ASSIGNEE_GROUP_TYPE SOURCE_OWNER SED_ASSIGNEE_SOURCE_OWNER_TYPE ENTITLEMENT_OWNER SED_ASSIGNEE_ENTITLEMENT_OWNER_TYPE
.PARAMETER Value
Identity or Group identifier Empty when using source/entitlement owner personas
.OUTPUTS

SedAssignee<PSCustomObject>
#>

function Initialize-V2025SedAssignee {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("IDENTITY", "GROUP", "SOURCE_OWNER", "ENTITLEMENT_OWNER")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025SedAssignee' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "value" = ${Value}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SedAssignee<PSCustomObject>

.DESCRIPTION

Convert from JSON to SedAssignee<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SedAssignee<PSCustomObject>
#>
function ConvertFrom-V2025JsonToSedAssignee {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025SedAssignee' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025SedAssignee
        $AllProperties = ("type", "value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "value" = ${Value}
        }

        return $PSO
    }

}

