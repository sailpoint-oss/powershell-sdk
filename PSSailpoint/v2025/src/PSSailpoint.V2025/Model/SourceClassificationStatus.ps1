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

.PARAMETER Status
Status of Classification Process
.PARAMETER Started
Time when the process was started
.PARAMETER Updated
Time when the process status was last updated
.PARAMETER Counts
No description available.
.OUTPUTS

SourceClassificationStatus<PSCustomObject>
#>

function Initialize-V2025SourceClassificationStatus {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("STARTED", "COLLECTED", "COMPLETED", "CANCELLED", "TERMINATED")]
        [String]
        ${Status},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Started},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Updated},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Counts}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025SourceClassificationStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "status" = ${Status}
            "started" = ${Started}
            "updated" = ${Updated}
            "counts" = ${Counts}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SourceClassificationStatus<PSCustomObject>

.DESCRIPTION

Convert from JSON to SourceClassificationStatus<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SourceClassificationStatus<PSCustomObject>
#>
function ConvertFrom-V2025JsonToSourceClassificationStatus {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025SourceClassificationStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025SourceClassificationStatus
        $AllProperties = ("status", "started", "updated", "counts")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "started"))) { #optional property not found
            $Started = $null
        } else {
            $Started = $JsonParameters.PSobject.Properties["started"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updated"))) { #optional property not found
            $Updated = $null
        } else {
            $Updated = $JsonParameters.PSobject.Properties["updated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "counts"))) { #optional property not found
            $Counts = $null
        } else {
            $Counts = $JsonParameters.PSobject.Properties["counts"].value
        }

        $PSO = [PSCustomObject]@{
            "status" = ${Status}
            "started" = ${Started}
            "updated" = ${Updated}
            "counts" = ${Counts}
        }

        return $PSO
    }

}

