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

.PARAMETER EntitlementRef
No description available.
.PARAMETER Name
Name of the entitlement
.PARAMETER ApplicationName
Application name of the entitlement
.PARAMETER IdentityCount
The number of identities with this entitlement in a role.
.PARAMETER Popularity
The % popularity of this entitlement in a role.
.PARAMETER PopularityInOrg
The % popularity of this entitlement in the org.
.PARAMETER SourceId
The ID of the source/application.
.PARAMETER ActivitySourceState
The status of activity data for the source.   Value is complete or notComplete.
.PARAMETER SourceUsagePercent
The percentage of identities in the potential role that have usage of the source/application of this entitlement.
.OUTPUTS

RoleMiningEntitlement<PSCustomObject>
#>

function Initialize-V2025RoleMiningEntitlement {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EntitlementRef},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApplicationName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${IdentityCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Popularity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${PopularityInOrg},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ActivitySourceState},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${SourceUsagePercent}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025RoleMiningEntitlement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "entitlementRef" = ${EntitlementRef}
            "name" = ${Name}
            "applicationName" = ${ApplicationName}
            "identityCount" = ${IdentityCount}
            "popularity" = ${Popularity}
            "popularityInOrg" = ${PopularityInOrg}
            "sourceId" = ${SourceId}
            "activitySourceState" = ${ActivitySourceState}
            "sourceUsagePercent" = ${SourceUsagePercent}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleMiningEntitlement<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleMiningEntitlement<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleMiningEntitlement<PSCustomObject>
#>
function ConvertFrom-V2025JsonToRoleMiningEntitlement {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025RoleMiningEntitlement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025RoleMiningEntitlement
        $AllProperties = ("entitlementRef", "name", "applicationName", "identityCount", "popularity", "popularityInOrg", "sourceId", "activitySourceState", "sourceUsagePercent")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlementRef"))) { #optional property not found
            $EntitlementRef = $null
        } else {
            $EntitlementRef = $JsonParameters.PSobject.Properties["entitlementRef"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "applicationName"))) { #optional property not found
            $ApplicationName = $null
        } else {
            $ApplicationName = $JsonParameters.PSobject.Properties["applicationName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityCount"))) { #optional property not found
            $IdentityCount = $null
        } else {
            $IdentityCount = $JsonParameters.PSobject.Properties["identityCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "popularity"))) { #optional property not found
            $Popularity = $null
        } else {
            $Popularity = $JsonParameters.PSobject.Properties["popularity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "popularityInOrg"))) { #optional property not found
            $PopularityInOrg = $null
        } else {
            $PopularityInOrg = $JsonParameters.PSobject.Properties["popularityInOrg"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) { #optional property not found
            $SourceId = $null
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "activitySourceState"))) { #optional property not found
            $ActivitySourceState = $null
        } else {
            $ActivitySourceState = $JsonParameters.PSobject.Properties["activitySourceState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceUsagePercent"))) { #optional property not found
            $SourceUsagePercent = $null
        } else {
            $SourceUsagePercent = $JsonParameters.PSobject.Properties["sourceUsagePercent"].value
        }

        $PSO = [PSCustomObject]@{
            "entitlementRef" = ${EntitlementRef}
            "name" = ${Name}
            "applicationName" = ${ApplicationName}
            "identityCount" = ${IdentityCount}
            "popularity" = ${Popularity}
            "popularityInOrg" = ${PopularityInOrg}
            "sourceId" = ${SourceId}
            "activitySourceState" = ${ActivitySourceState}
            "sourceUsagePercent" = ${SourceUsagePercent}
        }

        return $PSO
    }

}

