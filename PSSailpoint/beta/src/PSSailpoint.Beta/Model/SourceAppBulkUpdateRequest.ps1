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

.PARAMETER AppIds
List of source app ids to update
.PARAMETER JsonPatch
The JSONPatch payload used to update the source app.
.OUTPUTS

SourceAppBulkUpdateRequest<PSCustomObject>
#>

function Initialize-BetaSourceAppBulkUpdateRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${AppIds},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${JsonPatch}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaSourceAppBulkUpdateRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$AppIds) {
            throw "invalid value for 'AppIds', 'AppIds' cannot be null."
        }

        if ($AppIds.length -gt 50) {
            throw "invalid value for 'AppIds', number of items must be less than or equal to 50."
        }

        if (!$JsonPatch) {
            throw "invalid value for 'JsonPatch', 'JsonPatch' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "appIds" = ${AppIds}
            "jsonPatch" = ${JsonPatch}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SourceAppBulkUpdateRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to SourceAppBulkUpdateRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SourceAppBulkUpdateRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSourceAppBulkUpdateRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaSourceAppBulkUpdateRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSourceAppBulkUpdateRequest
        $AllProperties = ("appIds", "jsonPatch")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'appIds' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "appIds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'appIds' missing."
        } else {
            $AppIds = $JsonParameters.PSobject.Properties["appIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "jsonPatch"))) {
            throw "Error! JSON cannot be serialized due to the required property 'jsonPatch' missing."
        } else {
            $JsonPatch = $JsonParameters.PSobject.Properties["jsonPatch"].value
        }

        $PSO = [PSCustomObject]@{
            "appIds" = ${AppIds}
            "jsonPatch" = ${JsonPatch}
        }

        return $PSO
    }

}
