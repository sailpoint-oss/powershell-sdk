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

PreviewDataSourceResponse is the response sent by `/form-definitions/{formDefinitionID}/data-source` endpoint

.PARAMETER Results
Results holds a list of FormElementDataSourceConfigOptions items
.OUTPUTS

PreviewDataSourceResponse<PSCustomObject>
#>

function Initialize-V2024PreviewDataSourceResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Results}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024PreviewDataSourceResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "results" = ${Results}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PreviewDataSourceResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to PreviewDataSourceResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PreviewDataSourceResponse<PSCustomObject>
#>
function ConvertFrom-V2024JsonToPreviewDataSourceResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024PreviewDataSourceResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024PreviewDataSourceResponse
        $AllProperties = ("results")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "results"))) { #optional property not found
            $Results = $null
        } else {
            $Results = $JsonParameters.PSobject.Properties["results"].value
        }

        $PSO = [PSCustomObject]@{
            "results" = ${Results}
        }

        return $PSO
    }

}

