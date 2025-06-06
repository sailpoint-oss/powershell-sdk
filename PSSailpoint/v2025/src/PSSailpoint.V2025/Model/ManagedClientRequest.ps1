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

Managed Client Request

.PARAMETER ClusterId
Cluster ID that the ManagedClient is linked to
.PARAMETER Description
description for the ManagedClient to create
.PARAMETER Name
name for the ManagedClient to create
.PARAMETER Type
Type of the ManagedClient (VA, CCG) to create
.OUTPUTS

ManagedClientRequest<PSCustomObject>
#>

function Initialize-V2025ManagedClientRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ClusterId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025ManagedClientRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClusterId) {
            throw "invalid value for 'ClusterId', 'ClusterId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "clusterId" = ${ClusterId}
            "description" = ${Description}
            "name" = ${Name}
            "type" = ${Type}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ManagedClientRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to ManagedClientRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ManagedClientRequest<PSCustomObject>
#>
function ConvertFrom-V2025JsonToManagedClientRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025ManagedClientRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025ManagedClientRequest
        $AllProperties = ("clusterId", "description", "name", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'clusterId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "clusterId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'clusterId' missing."
        } else {
            $ClusterId = $JsonParameters.PSobject.Properties["clusterId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "clusterId" = ${ClusterId}
            "description" = ${Description}
            "name" = ${Name}
            "type" = ${Type}
        }

        return $PSO
    }

}

