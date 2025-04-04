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

Access Profile's basic details.

.PARAMETER Id
Access Profile ID.
.PARAMETER Requestable
Access Profile is requestable or not.
.OUTPUTS

AccessProfileBulkUpdateRequestInner<PSCustomObject>
#>

function Initialize-BetaAccessProfileBulkUpdateRequestInner {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Requestable}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaAccessProfileBulkUpdateRequestInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "requestable" = ${Requestable}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessProfileBulkUpdateRequestInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessProfileBulkUpdateRequestInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessProfileBulkUpdateRequestInner<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccessProfileBulkUpdateRequestInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaAccessProfileBulkUpdateRequestInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccessProfileBulkUpdateRequestInner
        $AllProperties = ("id", "requestable")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestable"))) { #optional property not found
            $Requestable = $null
        } else {
            $Requestable = $JsonParameters.PSobject.Properties["requestable"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "requestable" = ${Requestable}
        }

        return $PSO
    }

}

