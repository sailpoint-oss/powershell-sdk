#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Ids
List of non-employee ids.
.OUTPUTS

DeleteNonEmployeeRecordInBulkRequest<PSCustomObject>
#>

function Initialize-BetaDeleteNonEmployeeRecordInBulkRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Ids}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaDeleteNonEmployeeRecordInBulkRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Ids) {
            throw "invalid value for 'Ids', 'Ids' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "ids" = ${Ids}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DeleteNonEmployeeRecordInBulkRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to DeleteNonEmployeeRecordInBulkRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DeleteNonEmployeeRecordInBulkRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToDeleteNonEmployeeRecordInBulkRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaDeleteNonEmployeeRecordInBulkRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaDeleteNonEmployeeRecordInBulkRequest
        $AllProperties = ("ids")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'ids' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ids"))) {
            throw "Error! JSON cannot be serialized due to the required property 'ids' missing."
        } else {
            $Ids = $JsonParameters.PSobject.Properties["ids"].value
        }

        $PSO = [PSCustomObject]@{
            "ids" = ${Ids}
        }

        return $PSO
    }

}

