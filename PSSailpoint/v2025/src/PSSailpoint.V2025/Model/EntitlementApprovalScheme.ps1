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

.PARAMETER ApproverType
Describes the individual or group that is responsible for an approval step. Values are as follows.  **ENTITLEMENT_OWNER**: Owner of the associated Entitlement  **SOURCE_OWNER**: Owner of the associated Source  **MANAGER**: Manager of the Identity for whom the request is being made  **GOVERNANCE_GROUP**: A Governance Group, the ID of which is specified by the **approverId** field
.PARAMETER ApproverId
Id of the specific approver, used only when approverType is GOVERNANCE_GROUP
.OUTPUTS

EntitlementApprovalScheme<PSCustomObject>
#>

function Initialize-V2025EntitlementApprovalScheme {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ENTITLEMENT_OWNER", "SOURCE_OWNER", "MANAGER", "GOVERNANCE_GROUP")]
        [String]
        ${ApproverType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApproverId}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025EntitlementApprovalScheme' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "approverType" = ${ApproverType}
            "approverId" = ${ApproverId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EntitlementApprovalScheme<PSCustomObject>

.DESCRIPTION

Convert from JSON to EntitlementApprovalScheme<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EntitlementApprovalScheme<PSCustomObject>
#>
function ConvertFrom-V2025JsonToEntitlementApprovalScheme {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025EntitlementApprovalScheme' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025EntitlementApprovalScheme
        $AllProperties = ("approverType", "approverId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approverType"))) { #optional property not found
            $ApproverType = $null
        } else {
            $ApproverType = $JsonParameters.PSobject.Properties["approverType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approverId"))) { #optional property not found
            $ApproverId = $null
        } else {
            $ApproverId = $JsonParameters.PSobject.Properties["approverId"].value
        }

        $PSO = [PSCustomObject]@{
            "approverType" = ${ApproverType}
            "approverId" = ${ApproverId}
        }

        return $PSO
    }

}

