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

A Dimension

.PARAMETER Id
The id of the Dimension. This field must be left null when creating a dimension, otherwise a 400 Bad Request error will result.
.PARAMETER Name
The human-readable display name of the Dimension
.PARAMETER Description
A human-readable description of the Dimension
.PARAMETER Owner
No description available.
.PARAMETER AccessProfiles
No description available.
.PARAMETER Entitlements
No description available.
.PARAMETER Membership
No description available.
.PARAMETER ParentId
The ID of the parent role. This field can be left null when creating a dimension, but if provided, it must match the role ID specified in the path variable of the API call.
.OUTPUTS

Dimension<PSCustomObject>
#>

function Initialize-V2024Dimension {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccessProfiles},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Entitlements},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Membership},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ParentId}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024Dimension' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Name.length -gt 128) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 128."
        }

        if (!$Owner) {
            throw "invalid value for 'Owner', 'Owner' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "owner" = ${Owner}
            "accessProfiles" = ${AccessProfiles}
            "entitlements" = ${Entitlements}
            "membership" = ${Membership}
            "parentId" = ${ParentId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Dimension<PSCustomObject>

.DESCRIPTION

Convert from JSON to Dimension<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Dimension<PSCustomObject>
#>
function ConvertFrom-V2024JsonToDimension {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024Dimension' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024Dimension
        $AllProperties = ("id", "name", "created", "modified", "description", "owner", "accessProfiles", "entitlements", "membership", "parentId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) {
            throw "Error! JSON cannot be serialized due to the required property 'owner' missing."
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessProfiles"))) { #optional property not found
            $AccessProfiles = $null
        } else {
            $AccessProfiles = $JsonParameters.PSobject.Properties["accessProfiles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlements"))) { #optional property not found
            $Entitlements = $null
        } else {
            $Entitlements = $JsonParameters.PSobject.Properties["entitlements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "membership"))) { #optional property not found
            $Membership = $null
        } else {
            $Membership = $JsonParameters.PSobject.Properties["membership"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "parentId"))) { #optional property not found
            $ParentId = $null
        } else {
            $ParentId = $JsonParameters.PSobject.Properties["parentId"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "description" = ${Description}
            "owner" = ${Owner}
            "accessProfiles" = ${AccessProfiles}
            "entitlements" = ${Entitlements}
            "membership" = ${Membership}
            "parentId" = ${ParentId}
        }

        return $PSO
    }

}
