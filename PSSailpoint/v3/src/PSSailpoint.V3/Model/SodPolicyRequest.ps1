#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Name
Policy Business Name
.PARAMETER Description
Optional description of the SOD policy
.PARAMETER OwnerRef
No description available.
.PARAMETER ExternalPolicyReference
Optional External Policy Reference
.PARAMETER PolicyQuery
Search query of the SOD policy
.PARAMETER CompensatingControls
Optional compensating controls(Mitigating Controls)
.PARAMETER CorrectionAdvice
Optional correction advice
.PARAMETER State
whether the policy is enforced or not
.PARAMETER Tags
tags for this policy object
.PARAMETER ViolationOwnerAssignmentConfig
No description available.
.PARAMETER Scheduled
defines whether a policy has been scheduled or not
.PARAMETER Type
whether a policy is query based or conflicting access based
.PARAMETER ConflictingAccessCriteria
No description available.
.OUTPUTS

SodPolicyRequest<PSCustomObject>
#>

function Initialize-SodPolicyRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OwnerRef},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExternalPolicyReference},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PolicyQuery},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CompensatingControls},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CorrectionAdvice},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ENFORCED", "NOT_ENFORCED")]
        [String]
        ${State},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Tags},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ViolationOwnerAssignmentConfig},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Scheduled} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("GENERAL", "CONFLICTING_ACCESS_BASED")]
        [String]
        ${Type} = "GENERAL",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ConflictingAccessCriteria}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V3 => SodPolicyRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "ownerRef" = ${OwnerRef}
            "externalPolicyReference" = ${ExternalPolicyReference}
            "policyQuery" = ${PolicyQuery}
            "compensatingControls" = ${CompensatingControls}
            "correctionAdvice" = ${CorrectionAdvice}
            "state" = ${State}
            "tags" = ${Tags}
            "violationOwnerAssignmentConfig" = ${ViolationOwnerAssignmentConfig}
            "scheduled" = ${Scheduled}
            "type" = ${Type}
            "conflictingAccessCriteria" = ${ConflictingAccessCriteria}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SodPolicyRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to SodPolicyRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SodPolicyRequest<PSCustomObject>
#>
function ConvertFrom-JsonToSodPolicyRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V3 => SodPolicyRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SodPolicyRequest
        $AllProperties = ("id", "name", "created", "modified", "description", "ownerRef", "externalPolicyReference", "policyQuery", "compensatingControls", "correctionAdvice", "state", "tags", "creatorId", "modifierId", "violationOwnerAssignmentConfig", "scheduled", "type", "conflictingAccessCriteria")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownerRef"))) { #optional property not found
            $OwnerRef = $null
        } else {
            $OwnerRef = $JsonParameters.PSobject.Properties["ownerRef"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "externalPolicyReference"))) { #optional property not found
            $ExternalPolicyReference = $null
        } else {
            $ExternalPolicyReference = $JsonParameters.PSobject.Properties["externalPolicyReference"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "policyQuery"))) { #optional property not found
            $PolicyQuery = $null
        } else {
            $PolicyQuery = $JsonParameters.PSobject.Properties["policyQuery"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "compensatingControls"))) { #optional property not found
            $CompensatingControls = $null
        } else {
            $CompensatingControls = $JsonParameters.PSobject.Properties["compensatingControls"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "correctionAdvice"))) { #optional property not found
            $CorrectionAdvice = $null
        } else {
            $CorrectionAdvice = $JsonParameters.PSobject.Properties["correctionAdvice"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["tags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "creatorId"))) { #optional property not found
            $CreatorId = $null
        } else {
            $CreatorId = $JsonParameters.PSobject.Properties["creatorId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modifierId"))) { #optional property not found
            $ModifierId = $null
        } else {
            $ModifierId = $JsonParameters.PSobject.Properties["modifierId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "violationOwnerAssignmentConfig"))) { #optional property not found
            $ViolationOwnerAssignmentConfig = $null
        } else {
            $ViolationOwnerAssignmentConfig = $JsonParameters.PSobject.Properties["violationOwnerAssignmentConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scheduled"))) { #optional property not found
            $Scheduled = $null
        } else {
            $Scheduled = $JsonParameters.PSobject.Properties["scheduled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "conflictingAccessCriteria"))) { #optional property not found
            $ConflictingAccessCriteria = $null
        } else {
            $ConflictingAccessCriteria = $JsonParameters.PSobject.Properties["conflictingAccessCriteria"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "description" = ${Description}
            "ownerRef" = ${OwnerRef}
            "externalPolicyReference" = ${ExternalPolicyReference}
            "policyQuery" = ${PolicyQuery}
            "compensatingControls" = ${CompensatingControls}
            "correctionAdvice" = ${CorrectionAdvice}
            "state" = ${State}
            "tags" = ${Tags}
            "creatorId" = ${CreatorId}
            "modifierId" = ${ModifierId}
            "violationOwnerAssignmentConfig" = ${ViolationOwnerAssignmentConfig}
            "scheduled" = ${Scheduled}
            "type" = ${Type}
            "conflictingAccessCriteria" = ${ConflictingAccessCriteria}
        }

        return $PSO
    }

}

