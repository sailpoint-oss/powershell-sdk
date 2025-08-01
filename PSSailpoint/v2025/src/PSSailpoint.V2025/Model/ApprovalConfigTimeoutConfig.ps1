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

TimeoutConfig contains configurations around when the approval request should expire.

.PARAMETER Enabled
Indicates if timeout is enabled.
.PARAMETER DaysUntilTimeout
Number of days until approval request times out. Max value is 90.
.PARAMETER TimeoutResult
Result of timeout.
.OUTPUTS

ApprovalConfigTimeoutConfig<PSCustomObject>
#>

function Initialize-V2025ApprovalConfigTimeoutConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${DaysUntilTimeout},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EXPIRED", "APPROVED")]
        [String]
        ${TimeoutResult}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025ApprovalConfigTimeoutConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "enabled" = ${Enabled}
            "daysUntilTimeout" = ${DaysUntilTimeout}
            "timeoutResult" = ${TimeoutResult}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApprovalConfigTimeoutConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApprovalConfigTimeoutConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApprovalConfigTimeoutConfig<PSCustomObject>
#>
function ConvertFrom-V2025JsonToApprovalConfigTimeoutConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025ApprovalConfigTimeoutConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025ApprovalConfigTimeoutConfig
        $AllProperties = ("enabled", "daysUntilTimeout", "timeoutResult")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "daysUntilTimeout"))) { #optional property not found
            $DaysUntilTimeout = $null
        } else {
            $DaysUntilTimeout = $JsonParameters.PSobject.Properties["daysUntilTimeout"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timeoutResult"))) { #optional property not found
            $TimeoutResult = $null
        } else {
            $TimeoutResult = $JsonParameters.PSobject.Properties["timeoutResult"].value
        }

        $PSO = [PSCustomObject]@{
            "enabled" = ${Enabled}
            "daysUntilTimeout" = ${DaysUntilTimeout}
            "timeoutResult" = ${TimeoutResult}
        }

        return $PSO
    }

}

