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

.PARAMETER AccountId
The id of account
.PARAMETER AccountName
The name of account
.PARAMETER AccountUUID
The UUID representation of the account if available
.PARAMETER SourceId
The id of Source
.PARAMETER SourceName
The name of Source
.PARAMETER RemoveDate
The removal date scheduled for the entitlement on the Identity
.PARAMETER AssignmentId
The assignmentId of the entitlement on the Identity
.PARAMETER Revocable
If the entitlement can be revoked
.OUTPUTS

IdentityEntitlementDetailsAccountTarget<PSCustomObject>
#>

function Initialize-V2025IdentityEntitlementDetailsAccountTarget {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountUUID},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RemoveDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AssignmentId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Revocable} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025IdentityEntitlementDetailsAccountTarget' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "accountName" = ${AccountName}
            "accountUUID" = ${AccountUUID}
            "sourceId" = ${SourceId}
            "sourceName" = ${SourceName}
            "removeDate" = ${RemoveDate}
            "assignmentId" = ${AssignmentId}
            "revocable" = ${Revocable}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityEntitlementDetailsAccountTarget<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityEntitlementDetailsAccountTarget<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityEntitlementDetailsAccountTarget<PSCustomObject>
#>
function ConvertFrom-V2025JsonToIdentityEntitlementDetailsAccountTarget {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025IdentityEntitlementDetailsAccountTarget' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025IdentityEntitlementDetailsAccountTarget
        $AllProperties = ("accountId", "accountName", "accountUUID", "sourceId", "sourceName", "removeDate", "assignmentId", "revocable")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountId"))) { #optional property not found
            $AccountId = $null
        } else {
            $AccountId = $JsonParameters.PSobject.Properties["accountId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountName"))) { #optional property not found
            $AccountName = $null
        } else {
            $AccountName = $JsonParameters.PSobject.Properties["accountName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountUUID"))) { #optional property not found
            $AccountUUID = $null
        } else {
            $AccountUUID = $JsonParameters.PSobject.Properties["accountUUID"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "removeDate"))) { #optional property not found
            $RemoveDate = $null
        } else {
            $RemoveDate = $JsonParameters.PSobject.Properties["removeDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "assignmentId"))) { #optional property not found
            $AssignmentId = $null
        } else {
            $AssignmentId = $JsonParameters.PSobject.Properties["assignmentId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "revocable"))) { #optional property not found
            $Revocable = $null
        } else {
            $Revocable = $JsonParameters.PSobject.Properties["revocable"].value
        }

        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "accountName" = ${AccountName}
            "accountUUID" = ${AccountUUID}
            "sourceId" = ${SourceId}
            "sourceName" = ${SourceName}
            "removeDate" = ${RemoveDate}
            "assignmentId" = ${AssignmentId}
            "revocable" = ${Revocable}
        }

        return $PSO
    }

}

