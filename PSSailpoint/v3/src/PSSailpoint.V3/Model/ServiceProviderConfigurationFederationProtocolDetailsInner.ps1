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

ServiceProviderConfigurationFederationProtocolDetailsInner<PSCustomObject>
#>
function ConvertFrom-JsonToServiceProviderConfigurationFederationProtocolDetailsInner {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match IdpDetails defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToIdpDetails $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "IdpDetails"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'IdpDetails' defined in oneOf (ServiceProviderConfigurationFederationProtocolDetailsInner). Proceeding to the next one if any."
        }

        # try to match SpDetails defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToSpDetails $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "SpDetails"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'SpDetails' defined in oneOf (ServiceProviderConfigurationFederationProtocolDetailsInner). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([IdpDetails, SpDetails]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("IdpDetails", "SpDetails")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([IdpDetails, SpDetails]). JSON Payload: $($Json)"
        }
    }
}
