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

.PARAMETER Approved
Whether or not to approve the access request.
.PARAMETER Comment
A comment about the decision to approve or deny the request.
.PARAMETER Approver
The name of the entity that approved or denied the request.
.OUTPUTS

AccessRequestPreApproval1<PSCustomObject>
#>

function Initialize-V2025AccessRequestPreApproval1 {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Approved},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Approver}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025AccessRequestPreApproval1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Approved) {
            throw "invalid value for 'Approved', 'Approved' cannot be null."
        }

        if (!$Comment) {
            throw "invalid value for 'Comment', 'Comment' cannot be null."
        }

        if (!$Approver) {
            throw "invalid value for 'Approver', 'Approver' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "approved" = ${Approved}
            "comment" = ${Comment}
            "approver" = ${Approver}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessRequestPreApproval1<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessRequestPreApproval1<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessRequestPreApproval1<PSCustomObject>
#>
function ConvertFrom-V2025JsonToAccessRequestPreApproval1 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025AccessRequestPreApproval1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025AccessRequestPreApproval1
        $AllProperties = ("approved", "comment", "approver")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'approved' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approved"))) {
            throw "Error! JSON cannot be serialized due to the required property 'approved' missing."
        } else {
            $Approved = $JsonParameters.PSobject.Properties["approved"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) {
            throw "Error! JSON cannot be serialized due to the required property 'comment' missing."
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approver"))) {
            throw "Error! JSON cannot be serialized due to the required property 'approver' missing."
        } else {
            $Approver = $JsonParameters.PSobject.Properties["approver"].value
        }

        $PSO = [PSCustomObject]@{
            "approved" = ${Approved}
            "comment" = ${Comment}
            "approver" = ${Approver}
        }

        return $PSO
    }

}

