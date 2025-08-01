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

.PARAMETER EventType
the event type
.PARAMETER IdentityId
the identity id
.PARAMETER DateTime
the date of event
.PARAMETER Account
No description available.
.PARAMETER StatusChange
No description available.
.OUTPUTS

AccountStatusChanged<PSCustomObject>
#>

function Initialize-V2024AccountStatusChanged {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EventType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DateTime},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Account},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StatusChange}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024AccountStatusChanged' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Account) {
            throw "invalid value for 'Account', 'Account' cannot be null."
        }

        if (!$StatusChange) {
            throw "invalid value for 'StatusChange', 'StatusChange' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "eventType" = ${EventType}
            "identityId" = ${IdentityId}
            "dateTime" = ${DateTime}
            "account" = ${Account}
            "statusChange" = ${StatusChange}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountStatusChanged<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountStatusChanged<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountStatusChanged<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccountStatusChanged {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024AccountStatusChanged' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AccountStatusChanged
        $AllProperties = ("eventType", "identityId", "dateTime", "account", "statusChange")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'account' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "account"))) {
            throw "Error! JSON cannot be serialized due to the required property 'account' missing."
        } else {
            $Account = $JsonParameters.PSobject.Properties["account"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statusChange"))) {
            throw "Error! JSON cannot be serialized due to the required property 'statusChange' missing."
        } else {
            $StatusChange = $JsonParameters.PSobject.Properties["statusChange"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "eventType"))) { #optional property not found
            $EventType = $null
        } else {
            $EventType = $JsonParameters.PSobject.Properties["eventType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityId"))) { #optional property not found
            $IdentityId = $null
        } else {
            $IdentityId = $JsonParameters.PSobject.Properties["identityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dateTime"))) { #optional property not found
            $DateTime = $null
        } else {
            $DateTime = $JsonParameters.PSobject.Properties["dateTime"].value
        }

        $PSO = [PSCustomObject]@{
            "eventType" = ${EventType}
            "identityId" = ${IdentityId}
            "dateTime" = ${DateTime}
            "account" = ${Account}
            "statusChange" = ${StatusChange}
        }

        return $PSO
    }

}

