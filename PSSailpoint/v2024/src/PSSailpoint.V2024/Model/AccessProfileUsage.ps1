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

.PARAMETER AccessProfileId
ID of the Access Profile that is in use
.PARAMETER UsedBy
List of references to objects which are using the indicated Access Profile
.OUTPUTS

AccessProfileUsage<PSCustomObject>
#>

function Initialize-V2024AccessProfileUsage {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccessProfileId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${UsedBy}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024AccessProfileUsage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "accessProfileId" = ${AccessProfileId}
            "usedBy" = ${UsedBy}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessProfileUsage<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessProfileUsage<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessProfileUsage<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccessProfileUsage {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024AccessProfileUsage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AccessProfileUsage
        $AllProperties = ("accessProfileId", "usedBy")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessProfileId"))) { #optional property not found
            $AccessProfileId = $null
        } else {
            $AccessProfileId = $JsonParameters.PSobject.Properties["accessProfileId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usedBy"))) { #optional property not found
            $UsedBy = $null
        } else {
            $UsedBy = $JsonParameters.PSobject.Properties["usedBy"].value
        }

        $PSO = [PSCustomObject]@{
            "accessProfileId" = ${AccessProfileId}
            "usedBy" = ${UsedBy}
        }

        return $PSO
    }

}
