#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER AccessSummary
No description available.
.PARAMETER IdentitySummary
No description available.
.PARAMETER Id
The review item's id
.PARAMETER Completed
Whether the review item is complete
.PARAMETER NewAccess
Indicates whether the review item is for new access to a source
.PARAMETER Decision
No description available.
.PARAMETER Comments
Comments for this review item
.OUTPUTS

AccessReviewItem<PSCustomObject>
#>

function Initialize-V2024AccessReviewItem {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AccessSummary},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${IdentitySummary},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Completed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${NewAccess},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("APPROVE", "REVOKE")]
        [PSCustomObject]
        ${Decision},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comments}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024AccessReviewItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "accessSummary" = ${AccessSummary}
            "identitySummary" = ${IdentitySummary}
            "id" = ${Id}
            "completed" = ${Completed}
            "newAccess" = ${NewAccess}
            "decision" = ${Decision}
            "comments" = ${Comments}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessReviewItem<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessReviewItem<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessReviewItem<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccessReviewItem {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024AccessReviewItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AccessReviewItem
        $AllProperties = ("accessSummary", "identitySummary", "id", "completed", "newAccess", "decision", "comments")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessSummary"))) { #optional property not found
            $AccessSummary = $null
        } else {
            $AccessSummary = $JsonParameters.PSobject.Properties["accessSummary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identitySummary"))) { #optional property not found
            $IdentitySummary = $null
        } else {
            $IdentitySummary = $JsonParameters.PSobject.Properties["identitySummary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completed"))) { #optional property not found
            $Completed = $null
        } else {
            $Completed = $JsonParameters.PSobject.Properties["completed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "newAccess"))) { #optional property not found
            $NewAccess = $null
        } else {
            $NewAccess = $JsonParameters.PSobject.Properties["newAccess"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "decision"))) { #optional property not found
            $Decision = $null
        } else {
            $Decision = $JsonParameters.PSobject.Properties["decision"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comments"))) { #optional property not found
            $Comments = $null
        } else {
            $Comments = $JsonParameters.PSobject.Properties["comments"].value
        }

        $PSO = [PSCustomObject]@{
            "accessSummary" = ${AccessSummary}
            "identitySummary" = ${IdentitySummary}
            "id" = ${Id}
            "completed" = ${Completed}
            "newAccess" = ${NewAccess}
            "decision" = ${Decision}
            "comments" = ${Comments}
        }

        return $PSO
    }

}

