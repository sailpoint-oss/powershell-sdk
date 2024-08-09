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

.PARAMETER LicenseId
Name of the license
.PARAMETER LegacyFeatureName
Legacy name of the license
.OUTPUTS

License<PSCustomObject>
#>

function Initialize-V2024License {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LicenseId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LegacyFeatureName}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024License' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "licenseId" = ${LicenseId}
            "legacyFeatureName" = ${LegacyFeatureName}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to License<PSCustomObject>

.DESCRIPTION

Convert from JSON to License<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

License<PSCustomObject>
#>
function ConvertFrom-V2024JsonToLicense {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024License' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024License
        $AllProperties = ("licenseId", "legacyFeatureName")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "licenseId"))) { #optional property not found
            $LicenseId = $null
        } else {
            $LicenseId = $JsonParameters.PSobject.Properties["licenseId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "legacyFeatureName"))) { #optional property not found
            $LegacyFeatureName = $null
        } else {
            $LegacyFeatureName = $JsonParameters.PSobject.Properties["legacyFeatureName"].value
        }

        $PSO = [PSCustomObject]@{
            "licenseId" = ${LicenseId}
            "legacyFeatureName" = ${LegacyFeatureName}
        }

        return $PSO
    }

}
