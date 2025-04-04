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

.PARAMETER Attribute
The name of the identity attribute that changed.
.PARAMETER OldValue
No description available.
.PARAMETER NewValue
No description available.
.OUTPUTS

IdentityAttributesChangedChangesInner<PSCustomObject>
#>

function Initialize-V2025IdentityAttributesChangedChangesInner {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Attribute},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OldValue},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${NewValue}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025IdentityAttributesChangedChangesInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Attribute) {
            throw "invalid value for 'Attribute', 'Attribute' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "attribute" = ${Attribute}
            "oldValue" = ${OldValue}
            "newValue" = ${NewValue}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityAttributesChangedChangesInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityAttributesChangedChangesInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityAttributesChangedChangesInner<PSCustomObject>
#>
function ConvertFrom-V2025JsonToIdentityAttributesChangedChangesInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025IdentityAttributesChangedChangesInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025IdentityAttributesChangedChangesInner
        $AllProperties = ("attribute", "oldValue", "newValue")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'attribute' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attribute"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attribute' missing."
        } else {
            $Attribute = $JsonParameters.PSobject.Properties["attribute"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "oldValue"))) { #optional property not found
            $OldValue = $null
        } else {
            $OldValue = $JsonParameters.PSobject.Properties["oldValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "newValue"))) { #optional property not found
            $NewValue = $null
        } else {
            $NewValue = $JsonParameters.PSobject.Properties["newValue"].value
        }

        $PSO = [PSCustomObject]@{
            "attribute" = ${Attribute}
            "oldValue" = ${OldValue}
            "newValue" = ${NewValue}
        }

        return $PSO
    }

}

