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

The approval's reviewer's comment.

.PARAMETER Comment
Comment content.
.PARAMETER Author
No description available.
.PARAMETER Created
Date and time comment was created.
.OUTPUTS

CompletedApprovalReviewerComment<PSCustomObject>
#>

function Initialize-BetaCompletedApprovalReviewerComment {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Author},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaCompletedApprovalReviewerComment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
            "author" = ${Author}
            "created" = ${Created}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CompletedApprovalReviewerComment<PSCustomObject>

.DESCRIPTION

Convert from JSON to CompletedApprovalReviewerComment<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CompletedApprovalReviewerComment<PSCustomObject>
#>
function ConvertFrom-BetaJsonToCompletedApprovalReviewerComment {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaCompletedApprovalReviewerComment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaCompletedApprovalReviewerComment
        $AllProperties = ("comment", "author", "created")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "author"))) { #optional property not found
            $Author = $null
        } else {
            $Author = $JsonParameters.PSobject.Properties["author"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
            "author" = ${Author}
            "created" = ${Created}
        }

        return $PSO
    }

}

