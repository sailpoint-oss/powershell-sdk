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
ID of the OAuth client
.PARAMETER Secret
Secret of the OAuth client (This field is only returned on the intial create call.)
.PARAMETER BusinessName
The name of the business the API Client should belong to
.PARAMETER HomepageUrl
The homepage URL associated with the owner of the API Client
.PARAMETER Name
A human-readable name for the API Client
.PARAMETER Description
A description of the API Client
.PARAMETER AccessTokenValiditySeconds
The number of seconds an access token generated for this API Client is valid for
.PARAMETER RefreshTokenValiditySeconds
The number of seconds a refresh token generated for this API Client is valid for
.PARAMETER RedirectUris
A list of the approved redirect URIs used with the authorization_code flow
.PARAMETER GrantTypes
A list of OAuth 2.0 grant types this API Client can be used with
.PARAMETER AccessType
No description available.
.PARAMETER Type
No description available.
.PARAMETER Internal
An indicator of whether the API Client can be used for requests internal to IDN
.PARAMETER Enabled
An indicator of whether the API Client is enabled for use
.PARAMETER StrongAuthSupported
An indicator of whether the API Client supports strong authentication
.PARAMETER ClaimsSupported
An indicator of whether the API Client supports the serialization of SAML claims when used with the authorization_code flow
.PARAMETER Created
The date and time, down to the millisecond, when the API Client was created
.PARAMETER Modified
The date and time, down to the millisecond, when the API Client was last updated
.PARAMETER Scope
Scopes of the API Client.
.OUTPUTS

CreateOAuthClientResponse<PSCustomObject>
#>

function Initialize-V2025CreateOAuthClientResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Secret},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BusinessName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HomepageUrl},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${AccessTokenValiditySeconds},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${RefreshTokenValiditySeconds},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${RedirectUris},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${GrantTypes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ONLINE", "OFFLINE")]
        [PSCustomObject]
        ${AccessType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CONFIDENTIAL", "PUBLIC")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Internal},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Enabled},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${StrongAuthSupported},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${ClaimsSupported},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Scope}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025CreateOAuthClientResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Secret) {
            throw "invalid value for 'Secret', 'Secret' cannot be null."
        }

        if (!$BusinessName) {
            throw "invalid value for 'BusinessName', 'BusinessName' cannot be null."
        }

        if (!$HomepageUrl) {
            throw "invalid value for 'HomepageUrl', 'HomepageUrl' cannot be null."
        }

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Description) {
            throw "invalid value for 'Description', 'Description' cannot be null."
        }

        if (!$AccessTokenValiditySeconds) {
            throw "invalid value for 'AccessTokenValiditySeconds', 'AccessTokenValiditySeconds' cannot be null."
        }

        if (!$RefreshTokenValiditySeconds) {
            throw "invalid value for 'RefreshTokenValiditySeconds', 'RefreshTokenValiditySeconds' cannot be null."
        }

        if (!$RedirectUris) {
            throw "invalid value for 'RedirectUris', 'RedirectUris' cannot be null."
        }

        if (!$GrantTypes) {
            throw "invalid value for 'GrantTypes', 'GrantTypes' cannot be null."
        }

        if (!$AccessType) {
            throw "invalid value for 'AccessType', 'AccessType' cannot be null."
        }

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Internal) {
            throw "invalid value for 'Internal', 'Internal' cannot be null."
        }

        if (!$Enabled) {
            throw "invalid value for 'Enabled', 'Enabled' cannot be null."
        }

        if (!$StrongAuthSupported) {
            throw "invalid value for 'StrongAuthSupported', 'StrongAuthSupported' cannot be null."
        }

        if (!$ClaimsSupported) {
            throw "invalid value for 'ClaimsSupported', 'ClaimsSupported' cannot be null."
        }

        if (!$Created) {
            throw "invalid value for 'Created', 'Created' cannot be null."
        }

        if (!$Modified) {
            throw "invalid value for 'Modified', 'Modified' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "secret" = ${Secret}
            "businessName" = ${BusinessName}
            "homepageUrl" = ${HomepageUrl}
            "name" = ${Name}
            "description" = ${Description}
            "accessTokenValiditySeconds" = ${AccessTokenValiditySeconds}
            "refreshTokenValiditySeconds" = ${RefreshTokenValiditySeconds}
            "redirectUris" = ${RedirectUris}
            "grantTypes" = ${GrantTypes}
            "accessType" = ${AccessType}
            "type" = ${Type}
            "internal" = ${Internal}
            "enabled" = ${Enabled}
            "strongAuthSupported" = ${StrongAuthSupported}
            "claimsSupported" = ${ClaimsSupported}
            "created" = ${Created}
            "modified" = ${Modified}
            "scope" = ${Scope}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateOAuthClientResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateOAuthClientResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateOAuthClientResponse<PSCustomObject>
#>
function ConvertFrom-V2025JsonToCreateOAuthClientResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025CreateOAuthClientResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025CreateOAuthClientResponse
        $AllProperties = ("id", "secret", "businessName", "homepageUrl", "name", "description", "accessTokenValiditySeconds", "refreshTokenValiditySeconds", "redirectUris", "grantTypes", "accessType", "type", "internal", "enabled", "strongAuthSupported", "claimsSupported", "created", "modified", "scope")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "secret"))) {
            throw "Error! JSON cannot be serialized due to the required property 'secret' missing."
        } else {
            $Secret = $JsonParameters.PSobject.Properties["secret"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "businessName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'businessName' missing."
        } else {
            $BusinessName = $JsonParameters.PSobject.Properties["businessName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "homepageUrl"))) {
            throw "Error! JSON cannot be serialized due to the required property 'homepageUrl' missing."
        } else {
            $HomepageUrl = $JsonParameters.PSobject.Properties["homepageUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) {
            throw "Error! JSON cannot be serialized due to the required property 'description' missing."
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessTokenValiditySeconds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'accessTokenValiditySeconds' missing."
        } else {
            $AccessTokenValiditySeconds = $JsonParameters.PSobject.Properties["accessTokenValiditySeconds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "refreshTokenValiditySeconds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'refreshTokenValiditySeconds' missing."
        } else {
            $RefreshTokenValiditySeconds = $JsonParameters.PSobject.Properties["refreshTokenValiditySeconds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "redirectUris"))) {
            throw "Error! JSON cannot be serialized due to the required property 'redirectUris' missing."
        } else {
            $RedirectUris = $JsonParameters.PSobject.Properties["redirectUris"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "grantTypes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'grantTypes' missing."
        } else {
            $GrantTypes = $JsonParameters.PSobject.Properties["grantTypes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'accessType' missing."
        } else {
            $AccessType = $JsonParameters.PSobject.Properties["accessType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "internal"))) {
            throw "Error! JSON cannot be serialized due to the required property 'internal' missing."
        } else {
            $Internal = $JsonParameters.PSobject.Properties["internal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'enabled' missing."
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "strongAuthSupported"))) {
            throw "Error! JSON cannot be serialized due to the required property 'strongAuthSupported' missing."
        } else {
            $StrongAuthSupported = $JsonParameters.PSobject.Properties["strongAuthSupported"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "claimsSupported"))) {
            throw "Error! JSON cannot be serialized due to the required property 'claimsSupported' missing."
        } else {
            $ClaimsSupported = $JsonParameters.PSobject.Properties["claimsSupported"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created' missing."
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) {
            throw "Error! JSON cannot be serialized due to the required property 'modified' missing."
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scope"))) {
            throw "Error! JSON cannot be serialized due to the required property 'scope' missing."
        } else {
            $Scope = $JsonParameters.PSobject.Properties["scope"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "secret" = ${Secret}
            "businessName" = ${BusinessName}
            "homepageUrl" = ${HomepageUrl}
            "name" = ${Name}
            "description" = ${Description}
            "accessTokenValiditySeconds" = ${AccessTokenValiditySeconds}
            "refreshTokenValiditySeconds" = ${RefreshTokenValiditySeconds}
            "redirectUris" = ${RedirectUris}
            "grantTypes" = ${GrantTypes}
            "accessType" = ${AccessType}
            "type" = ${Type}
            "internal" = ${Internal}
            "enabled" = ${Enabled}
            "strongAuthSupported" = ${StrongAuthSupported}
            "claimsSupported" = ${ClaimsSupported}
            "created" = ${Created}
            "modified" = ${Modified}
            "scope" = ${Scope}
        }

        return $PSO
    }

}

