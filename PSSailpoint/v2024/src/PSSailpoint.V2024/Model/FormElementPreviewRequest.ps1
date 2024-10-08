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

.PARAMETER DataSource
No description available.
.OUTPUTS

FormElementPreviewRequest<PSCustomObject>
#>

function Initialize-V2024FormElementPreviewRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DataSource}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024FormElementPreviewRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "dataSource" = ${DataSource}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FormElementPreviewRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to FormElementPreviewRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FormElementPreviewRequest<PSCustomObject>
#>
function ConvertFrom-V2024JsonToFormElementPreviewRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024FormElementPreviewRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024FormElementPreviewRequest
        $AllProperties = ("dataSource")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dataSource"))) { #optional property not found
            $DataSource = $null
        } else {
            $DataSource = $JsonParameters.PSobject.Properties["dataSource"].value
        }

        $PSO = [PSCustomObject]@{
            "dataSource" = ${DataSource}
        }

        return $PSO
    }

}

