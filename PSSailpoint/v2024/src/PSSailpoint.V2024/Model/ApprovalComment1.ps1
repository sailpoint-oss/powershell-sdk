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

Comments Object

.PARAMETER Author
No description available.
.PARAMETER Comment
Comment to be left on an approval
.PARAMETER CreatedDate
Date the comment was created
.OUTPUTS

ApprovalComment1<PSCustomObject>
#>

function Initialize-V2024ApprovalComment1 {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Author},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CreatedDate}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024ApprovalComment1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "author" = ${Author}
            "comment" = ${Comment}
            "createdDate" = ${CreatedDate}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApprovalComment1<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApprovalComment1<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApprovalComment1<PSCustomObject>
#>
function ConvertFrom-V2024JsonToApprovalComment1 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024ApprovalComment1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ApprovalComment1
        $AllProperties = ("author", "comment", "createdDate")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "author"))) { #optional property not found
            $Author = $null
        } else {
            $Author = $JsonParameters.PSobject.Properties["author"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdDate"))) { #optional property not found
            $CreatedDate = $null
        } else {
            $CreatedDate = $JsonParameters.PSobject.Properties["createdDate"].value
        }

        $PSO = [PSCustomObject]@{
            "author" = ${Author}
            "comment" = ${Comment}
            "createdDate" = ${CreatedDate}
        }

        return $PSO
    }

}
