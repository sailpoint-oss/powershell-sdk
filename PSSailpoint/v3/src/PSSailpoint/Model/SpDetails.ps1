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

.PARAMETER Role
Federation protocol role
.PARAMETER EntityId
An entity ID is a globally unique name for a SAML entity, either an Identity Provider (IDP) or a Service Provider (SP).
.PARAMETER Alias
Unique alias used to identify the selected local service provider based on used URL. Used with SP configurations.
.PARAMETER CallbackUrl
The allowed callback URL where users will be redirected to after authentication. Used with SP configurations.
.OUTPUTS

SpDetails<PSCustomObject>
#>

function Initialize-SpDetails {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SAML_SP")]
        [String]
        ${Role},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EntityId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Alias},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CallbackUrl}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => SpDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "role" = ${Role}
            "entityId" = ${EntityId}
            "alias" = ${Alias}
            "callbackUrl" = ${CallbackUrl}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SpDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to SpDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SpDetails<PSCustomObject>
#>
function ConvertFrom-JsonToSpDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => SpDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SpDetails
        $AllProperties = ("role", "entityId", "alias", "callbackUrl")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "role"))) { #optional property not found
            $Role = $null
        } else {
            $Role = $JsonParameters.PSobject.Properties["role"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entityId"))) { #optional property not found
            $EntityId = $null
        } else {
            $EntityId = $JsonParameters.PSobject.Properties["entityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "alias"))) { #optional property not found
            $Alias = $null
        } else {
            $Alias = $JsonParameters.PSobject.Properties["alias"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "callbackUrl"))) { #optional property not found
            $CallbackUrl = $null
        } else {
            $CallbackUrl = $JsonParameters.PSobject.Properties["callbackUrl"].value
        }

        $PSO = [PSCustomObject]@{
            "role" = ${Role}
            "entityId" = ${EntityId}
            "alias" = ${Alias}
            "callbackUrl" = ${CallbackUrl}
        }

        return $PSO
    }

}
