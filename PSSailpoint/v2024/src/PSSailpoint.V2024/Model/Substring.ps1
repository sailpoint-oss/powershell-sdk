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

.PARAMETER VarBegin
The index of the first character to include in the returned substring.   If `begin` is set to -1, the transform will begin at character 0 of the input data 
.PARAMETER BeginOffset
This integer value is the number of characters to add to the begin attribute when returning a substring.   This attribute is only used if begin is not -1. 
.PARAMETER VarEnd
The index of the first character to exclude from the returned substring.  If end is -1 or not provided at all, the substring transform will return everything up to the end of the input string. 
.PARAMETER EndOffset
This integer value is the number of characters to add to the end attribute when returning a substring.   This attribute is only used if end is provided and is not -1. 
.PARAMETER RequiresPeriodicRefresh
A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process
.PARAMETER VarInput
This is an optional attribute that can explicitly define the input data which will be fed into the transform logic. If input is not provided, the transform will take its input from the source and attribute combination configured via the UI.
.OUTPUTS

Substring<PSCustomObject>
#>

function Initialize-V2024Substring {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${VarBegin},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${BeginOffset},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${VarEnd},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${EndOffset},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequiresPeriodicRefresh} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${VarInput}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024Substring' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$VarBegin) {
            throw "invalid value for 'VarBegin', 'VarBegin' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "begin" = ${VarBegin}
            "beginOffset" = ${BeginOffset}
            "end" = ${VarEnd}
            "endOffset" = ${EndOffset}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
            "input" = ${VarInput}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Substring<PSCustomObject>

.DESCRIPTION

Convert from JSON to Substring<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Substring<PSCustomObject>
#>
function ConvertFrom-V2024JsonToSubstring {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024Substring' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024Substring
        $AllProperties = ("begin", "beginOffset", "end", "endOffset", "requiresPeriodicRefresh", "input")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'begin' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "begin"))) {
            throw "Error! JSON cannot be serialized due to the required property 'begin' missing."
        } else {
            $VarBegin = $JsonParameters.PSobject.Properties["begin"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "beginOffset"))) { #optional property not found
            $BeginOffset = $null
        } else {
            $BeginOffset = $JsonParameters.PSobject.Properties["beginOffset"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "end"))) { #optional property not found
            $VarEnd = $null
        } else {
            $VarEnd = $JsonParameters.PSobject.Properties["end"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "endOffset"))) { #optional property not found
            $EndOffset = $null
        } else {
            $EndOffset = $JsonParameters.PSobject.Properties["endOffset"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requiresPeriodicRefresh"))) { #optional property not found
            $RequiresPeriodicRefresh = $null
        } else {
            $RequiresPeriodicRefresh = $JsonParameters.PSobject.Properties["requiresPeriodicRefresh"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "input"))) { #optional property not found
            $VarInput = $null
        } else {
            $VarInput = $JsonParameters.PSobject.Properties["input"].value
        }

        $PSO = [PSCustomObject]@{
            "begin" = ${VarBegin}
            "beginOffset" = ${BeginOffset}
            "end" = ${VarEnd}
            "endOffset" = ${EndOffset}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
            "input" = ${VarInput}
        }

        return $PSO
    }

}
