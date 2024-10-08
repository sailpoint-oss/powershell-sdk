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

.PARAMETER UserId
User id for Verification request.
.PARAMETER SignedResponse
User id for Verification request.
.OUTPUTS

DuoVerificationRequest<PSCustomObject>
#>

function Initialize-DuoVerificationRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SignedResponse}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V3 => DuoVerificationRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$UserId) {
            throw "invalid value for 'UserId', 'UserId' cannot be null."
        }

        if (!$SignedResponse) {
            throw "invalid value for 'SignedResponse', 'SignedResponse' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "userId" = ${UserId}
            "signedResponse" = ${SignedResponse}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DuoVerificationRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to DuoVerificationRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DuoVerificationRequest<PSCustomObject>
#>
function ConvertFrom-JsonToDuoVerificationRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V3 => DuoVerificationRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DuoVerificationRequest
        $AllProperties = ("userId", "signedResponse")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'userId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'userId' missing."
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "signedResponse"))) {
            throw "Error! JSON cannot be serialized due to the required property 'signedResponse' missing."
        } else {
            $SignedResponse = $JsonParameters.PSobject.Properties["signedResponse"].value
        }

        $PSO = [PSCustomObject]@{
            "userId" = ${UserId}
            "signedResponse" = ${SignedResponse}
        }

        return $PSO
    }

}

