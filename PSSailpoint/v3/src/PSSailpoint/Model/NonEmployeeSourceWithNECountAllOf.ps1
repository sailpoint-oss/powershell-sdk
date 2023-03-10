#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER NonEmployeeCount
Number of non-employee records associated with this source.
.OUTPUTS

NonEmployeeSourceWithNECountAllOf<PSCustomObject>
#>

function Initialize-NonEmployeeSourceWithNECountAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${NonEmployeeCount}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => NonEmployeeSourceWithNECountAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "nonEmployeeCount" = ${NonEmployeeCount}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NonEmployeeSourceWithNECountAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to NonEmployeeSourceWithNECountAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NonEmployeeSourceWithNECountAllOf<PSCustomObject>
#>
function ConvertFrom-JsonToNonEmployeeSourceWithNECountAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => NonEmployeeSourceWithNECountAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in NonEmployeeSourceWithNECountAllOf
        $AllProperties = ("nonEmployeeCount")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nonEmployeeCount"))) { #optional property not found
            $NonEmployeeCount = $null
        } else {
            $NonEmployeeCount = $JsonParameters.PSobject.Properties["nonEmployeeCount"].value
        }

        $PSO = [PSCustomObject]@{
            "nonEmployeeCount" = ${NonEmployeeCount}
        }

        return $PSO
    }

}

