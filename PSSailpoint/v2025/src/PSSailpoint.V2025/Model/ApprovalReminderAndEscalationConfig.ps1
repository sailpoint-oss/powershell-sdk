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

.PARAMETER DaysUntilEscalation
Number of days to wait before the first reminder. If no reminders are configured, then this is the number of days to wait before escalation.
.PARAMETER DaysBetweenReminders
Number of days to wait between reminder notifications.
.PARAMETER MaxReminders
Maximum number of reminder notification to send to the reviewer before approval escalation.
.PARAMETER FallbackApproverRef
No description available.
.OUTPUTS

ApprovalReminderAndEscalationConfig<PSCustomObject>
#>

function Initialize-V2025ApprovalReminderAndEscalationConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${DaysUntilEscalation},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${DaysBetweenReminders},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxReminders},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${FallbackApproverRef}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025ApprovalReminderAndEscalationConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($MaxReminders -and $MaxReminders -lt 1) {
          throw "invalid value for 'MaxReminders', must be greater than or equal to 1."
        }


        $PSO = [PSCustomObject]@{
            "daysUntilEscalation" = ${DaysUntilEscalation}
            "daysBetweenReminders" = ${DaysBetweenReminders}
            "maxReminders" = ${MaxReminders}
            "fallbackApproverRef" = ${FallbackApproverRef}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApprovalReminderAndEscalationConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApprovalReminderAndEscalationConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApprovalReminderAndEscalationConfig<PSCustomObject>
#>
function ConvertFrom-V2025JsonToApprovalReminderAndEscalationConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025ApprovalReminderAndEscalationConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025ApprovalReminderAndEscalationConfig
        $AllProperties = ("daysUntilEscalation", "daysBetweenReminders", "maxReminders", "fallbackApproverRef")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "daysUntilEscalation"))) { #optional property not found
            $DaysUntilEscalation = $null
        } else {
            $DaysUntilEscalation = $JsonParameters.PSobject.Properties["daysUntilEscalation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "daysBetweenReminders"))) { #optional property not found
            $DaysBetweenReminders = $null
        } else {
            $DaysBetweenReminders = $JsonParameters.PSobject.Properties["daysBetweenReminders"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxReminders"))) { #optional property not found
            $MaxReminders = $null
        } else {
            $MaxReminders = $JsonParameters.PSobject.Properties["maxReminders"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fallbackApproverRef"))) { #optional property not found
            $FallbackApproverRef = $null
        } else {
            $FallbackApproverRef = $JsonParameters.PSobject.Properties["fallbackApproverRef"].value
        }

        $PSO = [PSCustomObject]@{
            "daysUntilEscalation" = ${DaysUntilEscalation}
            "daysBetweenReminders" = ${DaysBetweenReminders}
            "maxReminders" = ${MaxReminders}
            "fallbackApproverRef" = ${FallbackApproverRef}
        }

        return $PSO
    }

}

