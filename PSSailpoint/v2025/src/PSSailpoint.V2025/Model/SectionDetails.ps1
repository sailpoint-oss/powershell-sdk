#
# Identity Security Cloud V2025 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2025
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Name
Name of the FormItem
.PARAMETER Label
Label of the section
.PARAMETER FormItems
List of FormItems. FormItems can be SectionDetails and/or FieldDetails
.OUTPUTS

SectionDetails<PSCustomObject>
#>

function Initialize-V2025SectionDetails {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Label},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FormItems}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025SectionDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "label" = ${Label}
            "formItems" = ${FormItems}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SectionDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to SectionDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SectionDetails<PSCustomObject>
#>
function ConvertFrom-V2025JsonToSectionDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025SectionDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025SectionDetails
        $AllProperties = ("name", "label", "formItems")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "label"))) { #optional property not found
            $Label = $null
        } else {
            $Label = $JsonParameters.PSobject.Properties["label"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formItems"))) { #optional property not found
            $FormItems = $null
        } else {
            $FormItems = $JsonParameters.PSobject.Properties["formItems"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "label" = ${Label}
            "formItems" = ${FormItems}
        }

        return $PSO
    }

}

