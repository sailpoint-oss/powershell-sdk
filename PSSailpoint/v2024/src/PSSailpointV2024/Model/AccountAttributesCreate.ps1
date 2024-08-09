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

No description available.

.PARAMETER Attributes
No description available.
.OUTPUTS

AccountAttributesCreate<PSCustomObject>
#>

function Initialize-V2024AccountAttributesCreate {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Attributes}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024AccountAttributesCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Attributes) {
            throw "invalid value for 'Attributes', 'Attributes' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "attributes" = ${Attributes}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountAttributesCreate<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountAttributesCreate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountAttributesCreate<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccountAttributesCreate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024AccountAttributesCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AccountAttributesCreate
        $AllProperties = ("attributes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'attributes' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attributes' missing."
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        $PSO = [PSCustomObject]@{
            "attributes" = ${Attributes}
        }

        return $PSO
    }

}
