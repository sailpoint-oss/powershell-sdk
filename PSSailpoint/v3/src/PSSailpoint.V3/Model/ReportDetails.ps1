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

Details about report to be processed.

.PARAMETER ReportType
Use this property to define what report should be processed in the RDE service.
.PARAMETER Arguments
No description available.
.OUTPUTS

ReportDetails<PSCustomObject>
#>

function Initialize-ReportDetails {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCOUNTS", "IDENTITIES_DETAILS", "IDENTITIES", "IDENTITY_PROFILE_IDENTITY_ERROR", "ORPHAN_IDENTITIES", "SEARCH_EXPORT", "UNCORRELATED_ACCOUNTS")]
        [String]
        ${ReportType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Arguments}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V3 => ReportDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "reportType" = ${ReportType}
            "arguments" = ${Arguments}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ReportDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to ReportDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ReportDetails<PSCustomObject>
#>
function ConvertFrom-JsonToReportDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V3 => ReportDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ReportDetails
        $AllProperties = ("reportType", "arguments")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reportType"))) { #optional property not found
            $ReportType = $null
        } else {
            $ReportType = $JsonParameters.PSobject.Properties["reportType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "arguments"))) { #optional property not found
            $Arguments = $null
        } else {
            $Arguments = $JsonParameters.PSobject.Properties["arguments"].value
        }

        $PSO = [PSCustomObject]@{
            "reportType" = ${ReportType}
            "arguments" = ${Arguments}
        }

        return $PSO
    }

}

