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

The correlated account.

.PARAMETER Type
The correlated account's DTO type.
.PARAMETER Id
The correlated account's ID.
.PARAMETER Name
The correlated account's display name.
.PARAMETER NativeIdentity
Unique ID of the account on the source.
.PARAMETER Uuid
The source's unique identifier for the account. UUID is generated by the source system.
.OUTPUTS

AccountCorrelatedAccount<PSCustomObject>
#>

function Initialize-V2025AccountCorrelatedAccount {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCOUNT")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NativeIdentity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Uuid}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025AccountCorrelatedAccount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$NativeIdentity) {
            throw "invalid value for 'NativeIdentity', 'NativeIdentity' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "name" = ${Name}
            "nativeIdentity" = ${NativeIdentity}
            "uuid" = ${Uuid}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountCorrelatedAccount<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountCorrelatedAccount<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountCorrelatedAccount<PSCustomObject>
#>
function ConvertFrom-V2025JsonToAccountCorrelatedAccount {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025AccountCorrelatedAccount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025AccountCorrelatedAccount
        $AllProperties = ("type", "id", "name", "nativeIdentity", "uuid")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nativeIdentity"))) {
            throw "Error! JSON cannot be serialized due to the required property 'nativeIdentity' missing."
        } else {
            $NativeIdentity = $JsonParameters.PSobject.Properties["nativeIdentity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uuid"))) { #optional property not found
            $Uuid = $null
        } else {
            $Uuid = $JsonParameters.PSobject.Properties["uuid"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "name" = ${Name}
            "nativeIdentity" = ${NativeIdentity}
            "uuid" = ${Uuid}
        }

        return $PSO
    }

}

