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

.PARAMETER CriteriaList
No description available.
.OUTPUTS

SodViolationContextConflictingAccessCriteriaLeftCriteria<PSCustomObject>
#>

function Initialize-SodViolationContextConflictingAccessCriteriaLeftCriteria {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${CriteriaList}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V3 => SodViolationContextConflictingAccessCriteriaLeftCriteria' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "criteriaList" = ${CriteriaList}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SodViolationContextConflictingAccessCriteriaLeftCriteria<PSCustomObject>

.DESCRIPTION

Convert from JSON to SodViolationContextConflictingAccessCriteriaLeftCriteria<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SodViolationContextConflictingAccessCriteriaLeftCriteria<PSCustomObject>
#>
function ConvertFrom-JsonToSodViolationContextConflictingAccessCriteriaLeftCriteria {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V3 => SodViolationContextConflictingAccessCriteriaLeftCriteria' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SodViolationContextConflictingAccessCriteriaLeftCriteria
        $AllProperties = ("criteriaList")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "criteriaList"))) { #optional property not found
            $CriteriaList = $null
        } else {
            $CriteriaList = $JsonParameters.PSobject.Properties["criteriaList"].value
        }

        $PSO = [PSCustomObject]@{
            "criteriaList" = ${CriteriaList}
        }

        return $PSO
    }

}

