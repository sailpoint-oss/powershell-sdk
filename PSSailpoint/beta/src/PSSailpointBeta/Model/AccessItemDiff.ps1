#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Id
the id of the access item
.PARAMETER EventType
No description available.
.PARAMETER DisplayName
the display name of the access item
.PARAMETER SourceName
the source name of the access item
.OUTPUTS

AccessItemDiff<PSCustomObject>
#>

function Initialize-BetaAccessItemDiff {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ADD", "REMOVE")]
        [String]
        ${EventType},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceName}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccessItemDiff' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "eventType" = ${EventType}
            "displayName" = ${DisplayName}
            "sourceName" = ${SourceName}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessItemDiff<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessItemDiff<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessItemDiff<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccessItemDiff {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccessItemDiff' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccessItemDiff
        $AllProperties = ("id", "eventType", "displayName", "sourceName")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "eventType"))) { #optional property not found
            $EventType = $null
        } else {
            $EventType = $JsonParameters.PSobject.Properties["eventType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceName"))) { #optional property not found
            $SourceName = $null
        } else {
            $SourceName = $JsonParameters.PSobject.Properties["sourceName"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "eventType" = ${EventType}
            "displayName" = ${DisplayName}
            "sourceName" = ${SourceName}
        }

        return $PSO
    }

}
