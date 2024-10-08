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

.PARAMETER AccountId
The ID of the account
.PARAMETER Cause
No description available.
.PARAMETER Name
The name of the item
.PARAMETER AttributeRequests
No description available.
.PARAMETER Source
No description available.
.OUTPUTS

ExpansionItem<PSCustomObject>
#>

function Initialize-V2024ExpansionItem {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Cause},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AttributeRequests},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Source}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024ExpansionItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "cause" = ${Cause}
            "name" = ${Name}
            "attributeRequests" = ${AttributeRequests}
            "source" = ${Source}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ExpansionItem<PSCustomObject>

.DESCRIPTION

Convert from JSON to ExpansionItem<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ExpansionItem<PSCustomObject>
#>
function ConvertFrom-V2024JsonToExpansionItem {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024ExpansionItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ExpansionItem
        $AllProperties = ("accountId", "cause", "name", "attributeRequests", "source")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountId"))) { #optional property not found
            $AccountId = $null
        } else {
            $AccountId = $JsonParameters.PSobject.Properties["accountId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cause"))) { #optional property not found
            $Cause = $null
        } else {
            $Cause = $JsonParameters.PSobject.Properties["cause"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeRequests"))) { #optional property not found
            $AttributeRequests = $null
        } else {
            $AttributeRequests = $JsonParameters.PSobject.Properties["attributeRequests"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) { #optional property not found
            $Source = $null
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        $PSO = [PSCustomObject]@{
            "accountId" = ${AccountId}
            "cause" = ${Cause}
            "name" = ${Name}
            "attributeRequests" = ${AttributeRequests}
            "source" = ${Source}
        }

        return $PSO
    }

}

