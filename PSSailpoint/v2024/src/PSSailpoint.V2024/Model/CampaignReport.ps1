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

.PARAMETER Type
SOD policy violation report result DTO type.
.PARAMETER Id
SOD policy violation report result ID.
.PARAMETER Name
Human-readable name of the SOD policy violation report result.
.PARAMETER Status
Status of a SOD policy violation report.
.PARAMETER ReportType
No description available.
.OUTPUTS

CampaignReport<PSCustomObject>
#>

function Initialize-V2024CampaignReport {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("REPORT_RESULT")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SUCCESS", "WARNING", "ERROR", "TERMINATED", "TEMP_ERROR", "PENDING")]
        [String]
        ${Status},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CAMPAIGN_COMPOSITION_REPORT", "CAMPAIGN_REMEDIATION_STATUS_REPORT", "CAMPAIGN_STATUS_REPORT", "CERTIFICATION_SIGNOFF_REPORT")]
        [PSCustomObject]
        ${ReportType}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024CampaignReport' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ReportType) {
            throw "invalid value for 'ReportType', 'ReportType' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "name" = ${Name}
            "status" = ${Status}
            "reportType" = ${ReportType}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CampaignReport<PSCustomObject>

.DESCRIPTION

Convert from JSON to CampaignReport<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CampaignReport<PSCustomObject>
#>
function ConvertFrom-V2024JsonToCampaignReport {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024CampaignReport' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024CampaignReport
        $AllProperties = ("type", "id", "name", "status", "reportType", "lastRunAt")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'reportType' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reportType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'reportType' missing."
        } else {
            $ReportType = $JsonParameters.PSobject.Properties["reportType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastRunAt"))) { #optional property not found
            $LastRunAt = $null
        } else {
            $LastRunAt = $JsonParameters.PSobject.Properties["lastRunAt"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "name" = ${Name}
            "status" = ${Status}
            "reportType" = ${ReportType}
            "lastRunAt" = ${LastRunAt}
        }

        return $PSO
    }

}

