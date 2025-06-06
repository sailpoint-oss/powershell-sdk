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

.PARAMETER Json

JSON object

.OUTPUTS

ServiceProviderConfigurationFederationProtocolDetailsInner<PSCustomObject>
#>
function ConvertFrom-V2024JsonToServiceProviderConfigurationFederationProtocolDetailsInner {
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
            # try to match IdpDetails defined in the anyOf schemas
            try {
                $matchInstance = ConvertFrom-V2024JsonToIdpDetails $Json

                foreach($property in $matchInstance.PsObject.Properties) {
                    if ($null -ne $property.Value) {
                        $matchType = "IdpDetails"
                        $match++
                        break
                    }
                }
            } catch {
                # fail to match the schema defined in anyOf, proceed to the next one
                Write-Debug "Failed to match 'IdpDetails' defined in anyOf (V2024ServiceProviderConfigurationFederationProtocolDetailsInner). Proceeding to the next one if any."
            }
        }

        if ($match -ne 0) { # no match yet
            # try to match SpDetails defined in the anyOf schemas
            try {
                $matchInstance = ConvertFrom-V2024JsonToSpDetails $Json

                foreach($property in $matchInstance.PsObject.Properties) {
                    if ($null -ne $property.Value) {
                        $matchType = "SpDetails"
                        $match++
                        break
                    }
                }
            } catch {
                # fail to match the schema defined in anyOf, proceed to the next one
                Write-Debug "Failed to match 'SpDetails' defined in anyOf (V2024ServiceProviderConfigurationFederationProtocolDetailsInner). Proceeding to the next one if any."
            }
        }

        if ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "anyOfSchemas" = @("IdpDetails", "SpDetails")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in anyOf schemas ([IdpDetails, SpDetails]). JSON Payload: $($Json)"
        }
    }
}

