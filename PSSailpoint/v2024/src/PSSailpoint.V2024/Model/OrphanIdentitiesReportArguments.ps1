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

Arguments for Orphan Identities report (ORPHAN_IDENTITIES)

.PARAMETER SelectedFormats
Output report file formats. These are formats for calling GET endpoint as query parameter 'fileFormat'.  In case report won't have this argument there will be ['CSV', 'PDF'] as default.
.OUTPUTS

OrphanIdentitiesReportArguments<PSCustomObject>
#>

function Initialize-V2024OrphanIdentitiesReportArguments {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CSV", "PDF")]
        [String[]]
        ${SelectedFormats}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024OrphanIdentitiesReportArguments' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "selectedFormats" = ${SelectedFormats}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OrphanIdentitiesReportArguments<PSCustomObject>

.DESCRIPTION

Convert from JSON to OrphanIdentitiesReportArguments<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OrphanIdentitiesReportArguments<PSCustomObject>
#>
function ConvertFrom-V2024JsonToOrphanIdentitiesReportArguments {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024OrphanIdentitiesReportArguments' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024OrphanIdentitiesReportArguments
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
