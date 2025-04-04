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

Domain status DTO containing everything required to verify via DKIM

.PARAMETER Id
New UUID associated with domain to be verified
.PARAMETER Domain
A domain address
.PARAMETER DkimEnabled
DKIM is enabled for this domain
.PARAMETER DkimTokens
DKIM tokens required for authentication
.PARAMETER DkimVerificationStatus
Status of DKIM authentication
.OUTPUTS

DomainStatusDto<PSCustomObject>
#>

function Initialize-V2025DomainStatusDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Domain},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DkimEnabled},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${DkimTokens},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DkimVerificationStatus}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025DomainStatusDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "domain" = ${Domain}
            "dkimEnabled" = ${DkimEnabled}
            "dkimTokens" = ${DkimTokens}
            "dkimVerificationStatus" = ${DkimVerificationStatus}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainStatusDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainStatusDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainStatusDto<PSCustomObject>
#>
function ConvertFrom-V2025JsonToDomainStatusDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025DomainStatusDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025DomainStatusDto
        $AllProperties = ("id", "domain", "dkimEnabled", "dkimTokens", "dkimVerificationStatus")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domain"))) { #optional property not found
            $Domain = $null
        } else {
            $Domain = $JsonParameters.PSobject.Properties["domain"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dkimEnabled"))) { #optional property not found
            $DkimEnabled = $null
        } else {
            $DkimEnabled = $JsonParameters.PSobject.Properties["dkimEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dkimTokens"))) { #optional property not found
            $DkimTokens = $null
        } else {
            $DkimTokens = $JsonParameters.PSobject.Properties["dkimTokens"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dkimVerificationStatus"))) { #optional property not found
            $DkimVerificationStatus = $null
        } else {
            $DkimVerificationStatus = $JsonParameters.PSobject.Properties["dkimVerificationStatus"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "domain" = ${Domain}
            "dkimEnabled" = ${DkimEnabled}
            "dkimTokens" = ${DkimTokens}
            "dkimVerificationStatus" = ${DkimVerificationStatus}
        }

        return $PSO
    }

}

