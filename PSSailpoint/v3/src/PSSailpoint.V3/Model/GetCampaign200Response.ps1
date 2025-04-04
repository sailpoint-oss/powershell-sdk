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

No description available.

.PARAMETER Json

JSON object

.OUTPUTS

GetCampaign200Response<PSCustomObject>
#>
function ConvertFrom-JsonToGetCampaign200Response {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        if ($match -ne 0) { # no match yet
            # try to match Campaign defined in the anyOf schemas
            try {
                $matchInstance = ConvertFrom-JsonToCampaign $Json

                foreach($property in $matchInstance.PsObject.Properties) {
                    if ($null -ne $property.Value) {
                        $matchType = "Campaign"
                        $match++
                        break
                    }
                }
            } catch {
                # fail to match the schema defined in anyOf, proceed to the next one
                Write-Debug "Failed to match 'Campaign' defined in anyOf (GetCampaign200Response). Proceeding to the next one if any."
            }
        }

        if ($match -ne 0) { # no match yet
            # try to match SlimCampaign defined in the anyOf schemas
            try {
                $matchInstance = ConvertFrom-JsonToSlimCampaign $Json

                foreach($property in $matchInstance.PsObject.Properties) {
                    if ($null -ne $property.Value) {
                        $matchType = "SlimCampaign"
                        $match++
                        break
                    }
                }
            } catch {
                # fail to match the schema defined in anyOf, proceed to the next one
                Write-Debug "Failed to match 'SlimCampaign' defined in anyOf (GetCampaign200Response). Proceeding to the next one if any."
            }
        }

        if ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "anyOfSchemas" = @("Campaign", "SlimCampaign")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in anyOf schemas ([Campaign, SlimCampaign]). JSON Payload: $($Json)"
        }
    }
}

