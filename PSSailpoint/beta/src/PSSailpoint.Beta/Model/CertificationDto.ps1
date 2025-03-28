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

No description available.

.PARAMETER CampaignRef
No description available.
.PARAMETER Phase
No description available.
.PARAMETER Due
Date and time when the certification is due.
.PARAMETER Signed
Date and time when the reviewer signed off on the certification.
.PARAMETER Reviewer
No description available.
.PARAMETER Reassignment
No description available.
.PARAMETER HasErrors
Indicates whether the certification has any errors.
.PARAMETER ErrorMessage
Message indicating what the error is.
.PARAMETER Completed
Indicates whether all certification decisions have been made.
.PARAMETER DecisionsMade
Number of approve/revoke/acknowledge decisions the reviewer has made.
.PARAMETER DecisionsTotal
Total number of approve/revoke/acknowledge decisions for the certification.
.PARAMETER EntitiesCompleted
Number of entities (identities, access profiles, roles, etc.) that are complete and all decisions have been made for.
.PARAMETER EntitiesTotal
Total number of entities (identities, access profiles, roles, etc.) in the certification, both complete and incomplete.
.OUTPUTS

CertificationDto<PSCustomObject>
#>

function Initialize-BetaCertificationDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CampaignRef},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("STAGED", "ACTIVE", "SIGNED")]
        [PSCustomObject]
        ${Phase},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Due},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Signed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Reviewer},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Reassignment},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${HasErrors},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ErrorMessage},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Completed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${DecisionsMade},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${DecisionsTotal},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${EntitiesCompleted},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${EntitiesTotal}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaCertificationDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$CampaignRef) {
            throw "invalid value for 'CampaignRef', 'CampaignRef' cannot be null."
        }

        if (!$Phase) {
            throw "invalid value for 'Phase', 'Phase' cannot be null."
        }

        if (!$Due) {
            throw "invalid value for 'Due', 'Due' cannot be null."
        }

        if (!$Signed) {
            throw "invalid value for 'Signed', 'Signed' cannot be null."
        }

        if (!$Reviewer) {
            throw "invalid value for 'Reviewer', 'Reviewer' cannot be null."
        }

        if (!$HasErrors) {
            throw "invalid value for 'HasErrors', 'HasErrors' cannot be null."
        }

        if (!$Completed) {
            throw "invalid value for 'Completed', 'Completed' cannot be null."
        }

        if (!$DecisionsMade) {
            throw "invalid value for 'DecisionsMade', 'DecisionsMade' cannot be null."
        }

        if (!$DecisionsTotal) {
            throw "invalid value for 'DecisionsTotal', 'DecisionsTotal' cannot be null."
        }

        if (!$EntitiesCompleted) {
            throw "invalid value for 'EntitiesCompleted', 'EntitiesCompleted' cannot be null."
        }

        if (!$EntitiesTotal) {
            throw "invalid value for 'EntitiesTotal', 'EntitiesTotal' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "campaignRef" = ${CampaignRef}
            "phase" = ${Phase}
            "due" = ${Due}
            "signed" = ${Signed}
            "reviewer" = ${Reviewer}
            "reassignment" = ${Reassignment}
            "hasErrors" = ${HasErrors}
            "errorMessage" = ${ErrorMessage}
            "completed" = ${Completed}
            "decisionsMade" = ${DecisionsMade}
            "decisionsTotal" = ${DecisionsTotal}
            "entitiesCompleted" = ${EntitiesCompleted}
            "entitiesTotal" = ${EntitiesTotal}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CertificationDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to CertificationDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CertificationDto<PSCustomObject>
#>
function ConvertFrom-BetaJsonToCertificationDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaCertificationDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaCertificationDto
        $AllProperties = ("campaignRef", "phase", "due", "signed", "reviewer", "reassignment", "hasErrors", "errorMessage", "completed", "decisionsMade", "decisionsTotal", "entitiesCompleted", "entitiesTotal")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'campaignRef' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "campaignRef"))) {
            throw "Error! JSON cannot be serialized due to the required property 'campaignRef' missing."
        } else {
            $CampaignRef = $JsonParameters.PSobject.Properties["campaignRef"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "phase"))) {
            throw "Error! JSON cannot be serialized due to the required property 'phase' missing."
        } else {
            $Phase = $JsonParameters.PSobject.Properties["phase"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "due"))) {
            throw "Error! JSON cannot be serialized due to the required property 'due' missing."
        } else {
            $Due = $JsonParameters.PSobject.Properties["due"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "signed"))) {
            throw "Error! JSON cannot be serialized due to the required property 'signed' missing."
        } else {
            $Signed = $JsonParameters.PSobject.Properties["signed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reviewer"))) {
            throw "Error! JSON cannot be serialized due to the required property 'reviewer' missing."
        } else {
            $Reviewer = $JsonParameters.PSobject.Properties["reviewer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasErrors"))) {
            throw "Error! JSON cannot be serialized due to the required property 'hasErrors' missing."
        } else {
            $HasErrors = $JsonParameters.PSobject.Properties["hasErrors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completed"))) {
            throw "Error! JSON cannot be serialized due to the required property 'completed' missing."
        } else {
            $Completed = $JsonParameters.PSobject.Properties["completed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "decisionsMade"))) {
            throw "Error! JSON cannot be serialized due to the required property 'decisionsMade' missing."
        } else {
            $DecisionsMade = $JsonParameters.PSobject.Properties["decisionsMade"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "decisionsTotal"))) {
            throw "Error! JSON cannot be serialized due to the required property 'decisionsTotal' missing."
        } else {
            $DecisionsTotal = $JsonParameters.PSobject.Properties["decisionsTotal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitiesCompleted"))) {
            throw "Error! JSON cannot be serialized due to the required property 'entitiesCompleted' missing."
        } else {
            $EntitiesCompleted = $JsonParameters.PSobject.Properties["entitiesCompleted"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitiesTotal"))) {
            throw "Error! JSON cannot be serialized due to the required property 'entitiesTotal' missing."
        } else {
            $EntitiesTotal = $JsonParameters.PSobject.Properties["entitiesTotal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reassignment"))) { #optional property not found
            $Reassignment = $null
        } else {
            $Reassignment = $JsonParameters.PSobject.Properties["reassignment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errorMessage"))) { #optional property not found
            $ErrorMessage = $null
        } else {
            $ErrorMessage = $JsonParameters.PSobject.Properties["errorMessage"].value
        }

        $PSO = [PSCustomObject]@{
            "campaignRef" = ${CampaignRef}
            "phase" = ${Phase}
            "due" = ${Due}
            "signed" = ${Signed}
            "reviewer" = ${Reviewer}
            "reassignment" = ${Reassignment}
            "hasErrors" = ${HasErrors}
            "errorMessage" = ${ErrorMessage}
            "completed" = ${Completed}
            "decisionsMade" = ${DecisionsMade}
            "decisionsTotal" = ${DecisionsTotal}
            "entitiesCompleted" = ${EntitiesCompleted}
            "entitiesTotal" = ${EntitiesTotal}
        }

        return $PSO
    }

}

