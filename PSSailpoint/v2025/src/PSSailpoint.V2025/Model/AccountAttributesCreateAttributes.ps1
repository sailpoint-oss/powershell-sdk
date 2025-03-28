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

The schema attribute values for the account

.PARAMETER SourceId
Target source to create an account
.OUTPUTS

AccountAttributesCreateAttributes<PSCustomObject>
#>

function Initialize-V2025AccountAttributesCreateAttributes {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025AccountAttributesCreateAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$SourceId) {
            throw "invalid value for 'SourceId', 'SourceId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "sourceId" = ${SourceId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountAttributesCreateAttributes<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountAttributesCreateAttributes<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountAttributesCreateAttributes<PSCustomObject>
#>
function ConvertFrom-V2025JsonToAccountAttributesCreateAttributes {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025AccountAttributesCreateAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $V2025AccountAttributesCreateAttributesAdditionalProperties = @{}

        # check if Json contains properties not defined in V2025AccountAttributesCreateAttributes
        $AllProperties = ("sourceId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $V2025AccountAttributesCreateAttributesAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'sourceId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sourceId' missing."
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        $PSO = [PSCustomObject]@{
            "sourceId" = ${SourceId}
            "AdditionalProperties" = $V2025AccountAttributesCreateAttributesAdditionalProperties
        }

        return $PSO
    }

}

