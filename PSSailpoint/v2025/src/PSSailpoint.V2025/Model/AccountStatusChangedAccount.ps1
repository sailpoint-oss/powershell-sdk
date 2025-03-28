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
the ID of the account in the database
.PARAMETER NativeIdentity
the native identifier of the account
.PARAMETER DisplayName
the display name of the account
.PARAMETER SourceId
the ID of the source for this account
.PARAMETER SourceName
the name of the source for this account
.PARAMETER EntitlementCount
the number of entitlements on this account
.PARAMETER AccessType
this value is always ""account""
.OUTPUTS

AccountStatusChangedAccount<PSCustomObject>
#>

function Initialize-V2025AccountStatusChangedAccount {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NativeIdentity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${EntitlementCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccessType}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025AccountStatusChangedAccount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "nativeIdentity" = ${NativeIdentity}
            "displayName" = ${DisplayName}
            "sourceId" = ${SourceId}
            "sourceName" = ${SourceName}
            "entitlementCount" = ${EntitlementCount}
            "accessType" = ${AccessType}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountStatusChangedAccount<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountStatusChangedAccount<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountStatusChangedAccount<PSCustomObject>
#>
function ConvertFrom-V2025JsonToAccountStatusChangedAccount {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025AccountStatusChangedAccount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025AccountStatusChangedAccount
        $AllProperties = ("id", "nativeIdentity", "displayName", "sourceId", "sourceName", "entitlementCount", "accessType")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nativeIdentity"))) { #optional property not found
            $NativeIdentity = $null
        } else {
            $NativeIdentity = $JsonParameters.PSobject.Properties["nativeIdentity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) { #optional property not found
            $SourceId = $null
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceName"))) { #optional property not found
            $SourceName = $null
        } else {
            $SourceName = $JsonParameters.PSobject.Properties["sourceName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlementCount"))) { #optional property not found
            $EntitlementCount = $null
        } else {
            $EntitlementCount = $JsonParameters.PSobject.Properties["entitlementCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessType"))) { #optional property not found
            $AccessType = $null
        } else {
            $AccessType = $JsonParameters.PSobject.Properties["accessType"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "nativeIdentity" = ${NativeIdentity}
            "displayName" = ${DisplayName}
            "sourceId" = ${SourceId}
            "sourceName" = ${SourceName}
            "entitlementCount" = ${EntitlementCount}
            "accessType" = ${AccessType}
        }

        return $PSO
    }

}

