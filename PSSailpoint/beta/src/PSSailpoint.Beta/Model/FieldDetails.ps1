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

.PARAMETER Name
Name of the FormItem
.PARAMETER DisplayName
Display name of the field
.PARAMETER DisplayType
Type of the field to display
.PARAMETER Required
True if the field is required
.PARAMETER AllowedValuesList
List of allowed values for the field
.PARAMETER Value
Value of the field
.OUTPUTS

FieldDetails<PSCustomObject>
#>

function Initialize-BetaFieldDetails {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Required},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AllowedValuesList},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaFieldDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "displayName" = ${DisplayName}
            "displayType" = ${DisplayType}
            "required" = ${Required}
            "allowedValuesList" = ${AllowedValuesList}
            "value" = ${Value}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FieldDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to FieldDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FieldDetails<PSCustomObject>
#>
function ConvertFrom-BetaJsonToFieldDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaFieldDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaFieldDetails
        $AllProperties = ("name", "displayName", "displayType", "required", "allowedValuesList", "value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayType"))) { #optional property not found
            $DisplayType = $null
        } else {
            $DisplayType = $JsonParameters.PSobject.Properties["displayType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "required"))) { #optional property not found
            $Required = $null
        } else {
            $Required = $JsonParameters.PSobject.Properties["required"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowedValuesList"))) { #optional property not found
            $AllowedValuesList = $null
        } else {
            $AllowedValuesList = $JsonParameters.PSobject.Properties["allowedValuesList"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "displayName" = ${DisplayName}
            "displayType" = ${DisplayType}
            "required" = ${Required}
            "allowedValuesList" = ${AllowedValuesList}
            "value" = ${Value}
        }

        return $PSO
    }

}

