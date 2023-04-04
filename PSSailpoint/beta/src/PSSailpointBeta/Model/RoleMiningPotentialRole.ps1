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

.PARAMETER CreatedBy
No description available.
.PARAMETER Density
The density of a potential role.
.PARAMETER Description
The description of a potential role.
.PARAMETER EntitlementCount
The number of entitlements in a potential role.
.PARAMETER ExcludedEntitlements
The list of entitlement ids to be excluded.
.PARAMETER Freshness
The freshness of a potential role.
.PARAMETER IdentityCount
The number of identities in a potential role.
.PARAMETER IdentityDistribution
Identity attribute distribution.
.PARAMETER IdentityIds
The list of ids in a potential role.
.PARAMETER Name
Name of the potential role.
.PARAMETER ProvisionState
No description available.
.PARAMETER Quality
The quality of a potential role.
.PARAMETER RoleId
The roleId of a potential role.
.PARAMETER Saved
The potential role's saved status.
.PARAMETER Session
No description available.
.PARAMETER Type
No description available.
.OUTPUTS

RoleMiningPotentialRole<PSCustomObject>
#>

function Initialize-BetaRoleMiningPotentialRole {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CreatedBy},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Density},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${EntitlementCount},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ExcludedEntitlements},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Freshness},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${IdentityCount},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${IdentityDistribution},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${IdentityIds},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ProvisionState},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Quality},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RoleId},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Saved},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Session},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRoleMiningPotentialRole' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "createdBy" = ${CreatedBy}
            "density" = ${Density}
            "description" = ${Description}
            "entitlementCount" = ${EntitlementCount}
            "excludedEntitlements" = ${ExcludedEntitlements}
            "freshness" = ${Freshness}
            "identityCount" = ${IdentityCount}
            "identityDistribution" = ${IdentityDistribution}
            "identityIds" = ${IdentityIds}
            "name" = ${Name}
            "provisionState" = ${ProvisionState}
            "quality" = ${Quality}
            "roleId" = ${RoleId}
            "saved" = ${Saved}
            "session" = ${Session}
            "type" = ${Type}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleMiningPotentialRole<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleMiningPotentialRole<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleMiningPotentialRole<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRoleMiningPotentialRole {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRoleMiningPotentialRole' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRoleMiningPotentialRole
        $AllProperties = ("createdBy", "density", "description", "entitlementCount", "excludedEntitlements", "freshness", "identityCount", "identityDistribution", "identityIds", "name", "provisionState", "quality", "roleId", "saved", "session", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdBy"))) { #optional property not found
            $CreatedBy = $null
        } else {
            $CreatedBy = $JsonParameters.PSobject.Properties["createdBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "density"))) { #optional property not found
            $Density = $null
        } else {
            $Density = $JsonParameters.PSobject.Properties["density"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlementCount"))) { #optional property not found
            $EntitlementCount = $null
        } else {
            $EntitlementCount = $JsonParameters.PSobject.Properties["entitlementCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "excludedEntitlements"))) { #optional property not found
            $ExcludedEntitlements = $null
        } else {
            $ExcludedEntitlements = $JsonParameters.PSobject.Properties["excludedEntitlements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "freshness"))) { #optional property not found
            $Freshness = $null
        } else {
            $Freshness = $JsonParameters.PSobject.Properties["freshness"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityCount"))) { #optional property not found
            $IdentityCount = $null
        } else {
            $IdentityCount = $JsonParameters.PSobject.Properties["identityCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityDistribution"))) { #optional property not found
            $IdentityDistribution = $null
        } else {
            $IdentityDistribution = $JsonParameters.PSobject.Properties["identityDistribution"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityIds"))) { #optional property not found
            $IdentityIds = $null
        } else {
            $IdentityIds = $JsonParameters.PSobject.Properties["identityIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "provisionState"))) { #optional property not found
            $ProvisionState = $null
        } else {
            $ProvisionState = $JsonParameters.PSobject.Properties["provisionState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "quality"))) { #optional property not found
            $Quality = $null
        } else {
            $Quality = $JsonParameters.PSobject.Properties["quality"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "roleId"))) { #optional property not found
            $RoleId = $null
        } else {
            $RoleId = $JsonParameters.PSobject.Properties["roleId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "saved"))) { #optional property not found
            $Saved = $null
        } else {
            $Saved = $JsonParameters.PSobject.Properties["saved"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "session"))) { #optional property not found
            $Session = $null
        } else {
            $Session = $JsonParameters.PSobject.Properties["session"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "createdBy" = ${CreatedBy}
            "density" = ${Density}
            "description" = ${Description}
            "entitlementCount" = ${EntitlementCount}
            "excludedEntitlements" = ${ExcludedEntitlements}
            "freshness" = ${Freshness}
            "identityCount" = ${IdentityCount}
            "identityDistribution" = ${IdentityDistribution}
            "identityIds" = ${IdentityIds}
            "name" = ${Name}
            "provisionState" = ${ProvisionState}
            "quality" = ${Quality}
            "roleId" = ${RoleId}
            "saved" = ${Saved}
            "session" = ${Session}
            "type" = ${Type}
        }

        return $PSO
    }

}
