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

.PARAMETER FilteredPolicyList
Multi-policy report will be run for this list of ids
.OUTPUTS

MultiPolicyRequest<PSCustomObject>
#>

function Initialize-V2024MultiPolicyRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${FilteredPolicyList}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024MultiPolicyRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "filteredPolicyList" = ${FilteredPolicyList}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MultiPolicyRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to MultiPolicyRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MultiPolicyRequest<PSCustomObject>
#>
function ConvertFrom-V2024JsonToMultiPolicyRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024MultiPolicyRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024MultiPolicyRequest
        $AllProperties = ("filteredPolicyList")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filteredPolicyList"))) { #optional property not found
            $FilteredPolicyList = $null
        } else {
            $FilteredPolicyList = $JsonParameters.PSobject.Properties["filteredPolicyList"].value
        }

        $PSO = [PSCustomObject]@{
            "filteredPolicyList" = ${FilteredPolicyList}
        }

        return $PSO
    }

}
