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

.PARAMETER Id
The ID of the personal access token (to be used as the username for Basic Auth).
.PARAMETER Name
The name of the personal access token. Cannot be the same as other personal access tokens owned by a user.
.PARAMETER Scope
Scopes of the personal  access token.
.PARAMETER Owner
No description available.
.PARAMETER Created
The date and time, down to the millisecond, when this personal access token was created.
.PARAMETER LastUsed
The date and time, down to the millisecond, when this personal access token was last used to generate an access token. This timestamp does not get updated on every PAT usage, but only once a day. This property can be useful for identifying which PATs are no longer actively used and can be removed.
.PARAMETER Managed
If true, this token is managed by the SailPoint platform, and is not visible in the user interface. For example, Workflows will create managed personal access tokens for users who create workflows.
.PARAMETER AccessTokenValiditySeconds
Number of seconds an access token is valid when generated using this Personal Access Token. If no value is specified, the token will be created with the default value of 43200.
.PARAMETER ExpirationDate
Date and time, down to the millisecond, when this personal access token will expire. If not provided, the token will expire 6 months after its creation date. The value must be a valid date-time string between the current date and 6 months from the creation date.
.OUTPUTS

GetPersonalAccessTokenResponse<PSCustomObject>
#>

function Initialize-V2025GetPersonalAccessTokenResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Scope},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastUsed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Managed} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${AccessTokenValiditySeconds} = 43200,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ExpirationDate}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025GetPersonalAccessTokenResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Owner) {
            throw "invalid value for 'Owner', 'Owner' cannot be null."
        }

        if (!$Created) {
            throw "invalid value for 'Created', 'Created' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "scope" = ${Scope}
            "owner" = ${Owner}
            "created" = ${Created}
            "lastUsed" = ${LastUsed}
            "managed" = ${Managed}
            "accessTokenValiditySeconds" = ${AccessTokenValiditySeconds}
            "expirationDate" = ${ExpirationDate}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GetPersonalAccessTokenResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to GetPersonalAccessTokenResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GetPersonalAccessTokenResponse<PSCustomObject>
#>
function ConvertFrom-V2025JsonToGetPersonalAccessTokenResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025GetPersonalAccessTokenResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025GetPersonalAccessTokenResponse
        $AllProperties = ("id", "name", "scope", "owner", "created", "lastUsed", "managed", "accessTokenValiditySeconds", "expirationDate")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scope"))) {
            throw "Error! JSON cannot be serialized due to the required property 'scope' missing."
        } else {
            $Scope = $JsonParameters.PSobject.Properties["scope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) {
            throw "Error! JSON cannot be serialized due to the required property 'owner' missing."
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created' missing."
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUsed"))) { #optional property not found
            $LastUsed = $null
        } else {
            $LastUsed = $JsonParameters.PSobject.Properties["lastUsed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "managed"))) { #optional property not found
            $Managed = $null
        } else {
            $Managed = $JsonParameters.PSobject.Properties["managed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessTokenValiditySeconds"))) { #optional property not found
            $AccessTokenValiditySeconds = $null
        } else {
            $AccessTokenValiditySeconds = $JsonParameters.PSobject.Properties["accessTokenValiditySeconds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expirationDate"))) { #optional property not found
            $ExpirationDate = $null
        } else {
            $ExpirationDate = $JsonParameters.PSobject.Properties["expirationDate"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "scope" = ${Scope}
            "owner" = ${Owner}
            "created" = ${Created}
            "lastUsed" = ${LastUsed}
            "managed" = ${Managed}
            "accessTokenValiditySeconds" = ${AccessTokenValiditySeconds}
            "expirationDate" = ${ExpirationDate}
        }

        return $PSO
    }

}

