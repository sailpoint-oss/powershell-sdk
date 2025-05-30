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

.PARAMETER Id
The ID of the access item
.PARAMETER DisplayName
the display name of the access item
.PARAMETER Description
Description of the access item.
.PARAMETER AccessType
The type of the access item.
.PARAMETER SourceName
the associated source name if it exists
.PARAMETER ExtremelyRare
rarest access
.OUTPUTS

OutliersContributingFeatureAccessItems<PSCustomObject>
#>

function Initialize-V2025OutliersContributingFeatureAccessItems {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ENTITLEMENT", "ACCESS_PROFILE", "ROLE")]
        [String]
        ${AccessType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ExtremelyRare} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025OutliersContributingFeatureAccessItems' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "displayName" = ${DisplayName}
            "description" = ${Description}
            "accessType" = ${AccessType}
            "sourceName" = ${SourceName}
            "extremelyRare" = ${ExtremelyRare}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OutliersContributingFeatureAccessItems<PSCustomObject>

.DESCRIPTION

Convert from JSON to OutliersContributingFeatureAccessItems<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OutliersContributingFeatureAccessItems<PSCustomObject>
#>
function ConvertFrom-V2025JsonToOutliersContributingFeatureAccessItems {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025OutliersContributingFeatureAccessItems' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025OutliersContributingFeatureAccessItems
        $AllProperties = ("id", "displayName", "description", "accessType", "sourceName", "extremelyRare")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessType"))) { #optional property not found
            $AccessType = $null
        } else {
            $AccessType = $JsonParameters.PSobject.Properties["accessType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceName"))) { #optional property not found
            $SourceName = $null
        } else {
            $SourceName = $JsonParameters.PSobject.Properties["sourceName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "extremelyRare"))) { #optional property not found
            $ExtremelyRare = $null
        } else {
            $ExtremelyRare = $JsonParameters.PSobject.Properties["extremelyRare"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "displayName" = ${DisplayName}
            "description" = ${Description}
            "accessType" = ${AccessType}
            "sourceName" = ${SourceName}
            "extremelyRare" = ${ExtremelyRare}
        }

        return $PSO
    }

}

