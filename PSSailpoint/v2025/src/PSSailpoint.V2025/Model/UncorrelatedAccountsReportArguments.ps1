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

Arguments for Uncorrelated Accounts report (UNCORRELATED_ACCOUNTS)

.PARAMETER SelectedFormats
Output report file formats. These are formats for calling GET endpoint as query parameter 'fileFormat'.  In case report won't have this argument there will be ['CSV', 'PDF'] as default.
.OUTPUTS

UncorrelatedAccountsReportArguments<PSCustomObject>
#>

function Initialize-V2025UncorrelatedAccountsReportArguments {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CSV", "PDF")]
        [String[]]
        ${SelectedFormats}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025UncorrelatedAccountsReportArguments' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "selectedFormats" = ${SelectedFormats}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UncorrelatedAccountsReportArguments<PSCustomObject>

.DESCRIPTION

Convert from JSON to UncorrelatedAccountsReportArguments<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UncorrelatedAccountsReportArguments<PSCustomObject>
#>
function ConvertFrom-V2025JsonToUncorrelatedAccountsReportArguments {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025UncorrelatedAccountsReportArguments' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025UncorrelatedAccountsReportArguments
        $AllProperties = ("selectedFormats")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "selectedFormats"))) { #optional property not found
            $SelectedFormats = $null
        } else {
            $SelectedFormats = $JsonParameters.PSobject.Properties["selectedFormats"].value
        }

        $PSO = [PSCustomObject]@{
            "selectedFormats" = ${SelectedFormats}
        }

        return $PSO
    }

}

