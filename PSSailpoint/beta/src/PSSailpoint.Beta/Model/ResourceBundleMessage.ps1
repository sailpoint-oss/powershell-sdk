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

.PARAMETER Key
The key of the message
.PARAMETER Format
The format of the message
.OUTPUTS

ResourceBundleMessage<PSCustomObject>
#>

function Initialize-BetaResourceBundleMessage {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Format}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaResourceBundleMessage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "format" = ${Format}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResourceBundleMessage<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResourceBundleMessage<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResourceBundleMessage<PSCustomObject>
#>
function ConvertFrom-BetaJsonToResourceBundleMessage {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaResourceBundleMessage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaResourceBundleMessage
        $AllProperties = ("key", "format")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "format"))) { #optional property not found
            $Format = $null
        } else {
            $Format = $JsonParameters.PSobject.Properties["format"].value
        }

        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "format" = ${Format}
        }

        return $PSO
    }

}
