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

Details of up to 5 Identity attributes that will be publicly accessible for all Identities to anyone in the org

.PARAMETER Attributes
No description available.
.PARAMETER ModifiedBy
No description available.
.PARAMETER Modified
the date/time of the modification
.OUTPUTS

PublicIdentityConfig<PSCustomObject>
#>

function Initialize-BetaPublicIdentityConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ModifiedBy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaPublicIdentityConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "attributes" = ${Attributes}
            "modifiedBy" = ${ModifiedBy}
            "modified" = ${Modified}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PublicIdentityConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to PublicIdentityConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PublicIdentityConfig<PSCustomObject>
#>
function ConvertFrom-BetaJsonToPublicIdentityConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaPublicIdentityConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaPublicIdentityConfig
        $AllProperties = ("attributes", "modifiedBy", "modified")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modifiedBy"))) { #optional property not found
            $ModifiedBy = $null
        } else {
            $ModifiedBy = $JsonParameters.PSobject.Properties["modifiedBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        $PSO = [PSCustomObject]@{
            "attributes" = ${Attributes}
            "modifiedBy" = ${ModifiedBy}
            "modified" = ${Modified}
        }

        return $PSO
    }

}
