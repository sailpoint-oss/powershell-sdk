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

.PARAMETER IdentityId
The identity ID that requested the password change
.PARAMETER EncryptedPassword
The RSA encrypted password
.PARAMETER PublicKeyId
The encryption key ID
.PARAMETER AccountId
Account ID of the account This is specified per account schema in the source configuration. It is used to distinguish accounts. More info can be found here https://community.sailpoint.com/t5/IdentityNow-Connectors/How-do-I-designate-an-account-attribute-as-the-Account-ID-for-a/ta-p/80350
.PARAMETER SourceId
The ID of the source for which identity is requesting the password change
.OUTPUTS

PasswordChangeRequest<PSCustomObject>
#>

function Initialize-V2025PasswordChangeRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EncryptedPassword},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PublicKeyId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025PasswordChangeRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "encryptedPassword" = ${EncryptedPassword}
            "publicKeyId" = ${PublicKeyId}
            "accountId" = ${AccountId}
            "sourceId" = ${SourceId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PasswordChangeRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to PasswordChangeRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PasswordChangeRequest<PSCustomObject>
#>
function ConvertFrom-V2025JsonToPasswordChangeRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025PasswordChangeRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025PasswordChangeRequest
        $AllProperties = ("identityId", "encryptedPassword", "publicKeyId", "accountId", "sourceId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityId"))) { #optional property not found
            $IdentityId = $null
        } else {
            $IdentityId = $JsonParameters.PSobject.Properties["identityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "encryptedPassword"))) { #optional property not found
            $EncryptedPassword = $null
        } else {
            $EncryptedPassword = $JsonParameters.PSobject.Properties["encryptedPassword"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "publicKeyId"))) { #optional property not found
            $PublicKeyId = $null
        } else {
            $PublicKeyId = $JsonParameters.PSobject.Properties["publicKeyId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountId"))) { #optional property not found
            $AccountId = $null
        } else {
            $AccountId = $JsonParameters.PSobject.Properties["accountId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) { #optional property not found
            $SourceId = $null
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "encryptedPassword" = ${EncryptedPassword}
            "publicKeyId" = ${PublicKeyId}
            "accountId" = ${AccountId}
            "sourceId" = ${SourceId}
        }

        return $PSO
    }

}

