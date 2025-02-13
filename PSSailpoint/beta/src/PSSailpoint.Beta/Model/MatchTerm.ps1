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
The attribute name
.PARAMETER Value
The attribute value
.PARAMETER Op
The operator between name and value
.PARAMETER Container
If it is a container or a real match term
.PARAMETER And
If it is AND logical operator for the children match terms
.PARAMETER Children
The children under this match term
.OUTPUTS

MatchTerm<PSCustomObject>
#>

function Initialize-BetaMatchTerm {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Op},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Container} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${And} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable[]]
        ${Children}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaMatchTerm' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "value" = ${Value}
            "op" = ${Op}
            "container" = ${Container}
            "and" = ${And}
            "children" = ${Children}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MatchTerm<PSCustomObject>

.DESCRIPTION

Convert from JSON to MatchTerm<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MatchTerm<PSCustomObject>
#>
function ConvertFrom-BetaJsonToMatchTerm {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaMatchTerm' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaMatchTerm
        $AllProperties = ("name", "value", "op", "container", "and", "children")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "op"))) { #optional property not found
            $Op = $null
        } else {
            $Op = $JsonParameters.PSobject.Properties["op"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "container"))) { #optional property not found
            $Container = $null
        } else {
            $Container = $JsonParameters.PSobject.Properties["container"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "and"))) { #optional property not found
            $And = $null
        } else {
            $And = $JsonParameters.PSobject.Properties["and"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "children"))) { #optional property not found
            $Children = $null
        } else {
            $Children = $JsonParameters.PSobject.Properties["children"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "value" = ${Value}
            "op" = ${Op}
            "container" = ${Container}
            "and" = ${And}
            "children" = ${Children}
        }

        return $PSO
    }

}

