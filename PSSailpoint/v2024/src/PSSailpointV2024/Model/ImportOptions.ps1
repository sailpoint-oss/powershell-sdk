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

.PARAMETER ExcludeTypes
Object type names to be excluded from an sp-config export command.
.PARAMETER IncludeTypes
Object type names to be included in an sp-config export command. IncludeTypes takes precedence over excludeTypes.
.PARAMETER ObjectOptions
Additional options targeting specific objects related to each item in the includeTypes field
.PARAMETER DefaultReferences
List of object types that can be used to resolve references on import.
.PARAMETER ExcludeBackup
By default, every import will first export all existing objects supported by sp-config as a backup before the import is attempted. If excludeBackup is true, the backup will not be performed.
.OUTPUTS

ImportOptions<PSCustomObject>
#>

function Initialize-V2024ImportOptions {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("IDENTITY_OBJECT_CONFIG", "IDENTITY_PROFILE", "RULE", "SOURCE", "TRANSFORM", "TRIGGER_SUBSCRIPTION")]
        [String[]]
        ${ExcludeTypes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("IDENTITY_OBJECT_CONFIG", "IDENTITY_PROFILE", "RULE", "SOURCE", "TRANSFORM", "TRIGGER_SUBSCRIPTION")]
        [String[]]
        ${IncludeTypes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ObjectOptions},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("IDENTITY_OBJECT_CONFIG", "IDENTITY_PROFILE", "RULE", "SOURCE", "TRANSFORM", "TRIGGER_SUBSCRIPTION")]
        [String[]]
        ${DefaultReferences},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ExcludeBackup} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024ImportOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "excludeTypes" = ${ExcludeTypes}
            "includeTypes" = ${IncludeTypes}
            "objectOptions" = ${ObjectOptions}
            "defaultReferences" = ${DefaultReferences}
            "excludeBackup" = ${ExcludeBackup}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ImportOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to ImportOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ImportOptions<PSCustomObject>
#>
function ConvertFrom-V2024JsonToImportOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024ImportOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ImportOptions
        $AllProperties = ("excludeTypes", "includeTypes", "objectOptions", "defaultReferences", "excludeBackup")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "excludeTypes"))) { #optional property not found
            $ExcludeTypes = $null
        } else {
            $ExcludeTypes = $JsonParameters.PSobject.Properties["excludeTypes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "includeTypes"))) { #optional property not found
            $IncludeTypes = $null
        } else {
            $IncludeTypes = $JsonParameters.PSobject.Properties["includeTypes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "objectOptions"))) { #optional property not found
            $ObjectOptions = $null
        } else {
            $ObjectOptions = $JsonParameters.PSobject.Properties["objectOptions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "defaultReferences"))) { #optional property not found
            $DefaultReferences = $null
        } else {
            $DefaultReferences = $JsonParameters.PSobject.Properties["defaultReferences"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "excludeBackup"))) { #optional property not found
            $ExcludeBackup = $null
        } else {
            $ExcludeBackup = $JsonParameters.PSobject.Properties["excludeBackup"].value
        }

        $PSO = [PSCustomObject]@{
            "excludeTypes" = ${ExcludeTypes}
            "includeTypes" = ${IncludeTypes}
            "objectOptions" = ${ObjectOptions}
            "defaultReferences" = ${DefaultReferences}
            "excludeBackup" = ${ExcludeBackup}
        }

        return $PSO
    }

}
