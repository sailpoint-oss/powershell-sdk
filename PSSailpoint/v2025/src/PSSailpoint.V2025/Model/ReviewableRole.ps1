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
The id for the Role
.PARAMETER Name
The name of the Role
.PARAMETER Description
Information about the Role
.PARAMETER Privileged
Indicates if the entitlement is a privileged entitlement
.PARAMETER Owner
No description available.
.PARAMETER Revocable
Indicates whether the Role can be revoked or requested
.PARAMETER EndDate
The date when a user's access expires.
.PARAMETER AccessProfiles
The list of Access Profiles associated with this Role
.PARAMETER Entitlements
The list of entitlements associated with this Role
.OUTPUTS

ReviewableRole<PSCustomObject>
#>

function Initialize-V2025ReviewableRole {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Privileged},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Revocable},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${EndDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccessProfiles},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Entitlements}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025ReviewableRole' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "privileged" = ${Privileged}
            "owner" = ${Owner}
            "revocable" = ${Revocable}
            "endDate" = ${EndDate}
            "accessProfiles" = ${AccessProfiles}
            "entitlements" = ${Entitlements}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ReviewableRole<PSCustomObject>

.DESCRIPTION

Convert from JSON to ReviewableRole<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ReviewableRole<PSCustomObject>
#>
function ConvertFrom-V2025JsonToReviewableRole {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025ReviewableRole' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025ReviewableRole
        $AllProperties = ("id", "name", "description", "privileged", "owner", "revocable", "endDate", "accessProfiles", "entitlements")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "privileged"))) { #optional property not found
            $Privileged = $null
        } else {
            $Privileged = $JsonParameters.PSobject.Properties["privileged"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) { #optional property not found
            $Owner = $null
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "revocable"))) { #optional property not found
            $Revocable = $null
        } else {
            $Revocable = $JsonParameters.PSobject.Properties["revocable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "endDate"))) { #optional property not found
            $EndDate = $null
        } else {
            $EndDate = $JsonParameters.PSobject.Properties["endDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessProfiles"))) { #optional property not found
            $AccessProfiles = $null
        } else {
            $AccessProfiles = $JsonParameters.PSobject.Properties["accessProfiles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlements"))) { #optional property not found
            $Entitlements = $null
        } else {
            $Entitlements = $JsonParameters.PSobject.Properties["entitlements"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "privileged" = ${Privileged}
            "owner" = ${Owner}
            "revocable" = ${Revocable}
            "endDate" = ${EndDate}
            "accessProfiles" = ${AccessProfiles}
            "entitlements" = ${Entitlements}
        }

        return $PSO
    }

}

