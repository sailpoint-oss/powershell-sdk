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

Format of resolver URLs for Object Configurations

.PARAMETER Url
URL for the target object endpoint.
.PARAMETER Query
Any query parameters that are needed for the URL.
.OUTPUTS

SpConfigUrl<PSCustomObject>
#>

function Initialize-BetaSpConfigUrl {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Query}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaSpConfigUrl' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "url" = ${Url}
            "query" = ${Query}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SpConfigUrl<PSCustomObject>

.DESCRIPTION

Convert from JSON to SpConfigUrl<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SpConfigUrl<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSpConfigUrl {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaSpConfigUrl' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSpConfigUrl
        $AllProperties = ("url", "query")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) { #optional property not found
            $Url = $null
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "query"))) { #optional property not found
            $Query = $null
        } else {
            $Query = $JsonParameters.PSobject.Properties["query"].value
        }

        $PSO = [PSCustomObject]@{
            "url" = ${Url}
            "query" = ${Query}
        }

        return $PSO
    }

}
