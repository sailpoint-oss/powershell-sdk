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

.PARAMETER Type
No description available.
.PARAMETER Operation
No description available.
.PARAMETER Property
Specified key from the type of criteria.
.PARAMETER Value
Value for the specified key from the type of criteria.
.OUTPUTS

CampaignFilterDetailsCriteriaListInner<PSCustomObject>
#>

function Initialize-V2025CampaignFilterDetailsCriteriaListInner {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("COMPOSITE", "ROLE", "IDENTITY", "IDENTITY_ATTRIBUTE", "ENTITLEMENT", "ACCESS_PROFILE", "SOURCE", "ACCOUNT", "AGGREGATED_ENTITLEMENT", "INVALID_CERTIFIABLE_ENTITY")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Operation},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Property},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025CampaignFilterDetailsCriteriaListInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Operation) {
            throw "invalid value for 'Operation', 'Operation' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "operation" = ${Operation}
            "property" = ${Property}
            "value" = ${Value}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CampaignFilterDetailsCriteriaListInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to CampaignFilterDetailsCriteriaListInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CampaignFilterDetailsCriteriaListInner<PSCustomObject>
#>
function ConvertFrom-V2025JsonToCampaignFilterDetailsCriteriaListInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025CampaignFilterDetailsCriteriaListInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025CampaignFilterDetailsCriteriaListInner
        $AllProperties = ("type", "operation", "property", "value")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operation"))) {
            throw "Error! JSON cannot be serialized due to the required property 'operation' missing."
        } else {
            $Operation = $JsonParameters.PSobject.Properties["operation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "property"))) {
            throw "Error! JSON cannot be serialized due to the required property 'property' missing."
        } else {
            $Property = $JsonParameters.PSobject.Properties["property"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) {
            throw "Error! JSON cannot be serialized due to the required property 'value' missing."
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "operation" = ${Operation}
            "property" = ${Property}
            "value" = ${Value}
        }

        return $PSO
    }

}

