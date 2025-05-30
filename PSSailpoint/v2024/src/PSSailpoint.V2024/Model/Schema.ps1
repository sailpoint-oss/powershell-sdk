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

.PARAMETER Id
The id of the Schema.
.PARAMETER Name
The name of the Schema.
.PARAMETER NativeObjectType
The name of the object type on the native system that the schema represents.
.PARAMETER IdentityAttribute
The name of the attribute used to calculate the unique identifier for an object in the schema.
.PARAMETER DisplayAttribute
The name of the attribute used to calculate the display value for an object in the schema.
.PARAMETER HierarchyAttribute
The name of the attribute whose values represent other objects in a hierarchy. Only relevant to group schemas.
.PARAMETER IncludePermissions
Flag indicating whether or not the include permissions with the object data when aggregating the schema.
.PARAMETER Features
Optional features that can be supported by a source. Modifying the features array may cause source configuration errors that are unsupportable. It is recommended to not modify this array for SailPoint supported connectors. * AUTHENTICATE: The source supports pass-through authentication. * COMPOSITE: The source supports composite source creation. * DIRECT_PERMISSIONS: The source supports returning DirectPermissions. * DISCOVER_SCHEMA: The source supports discovering schemas for users and groups. * ENABLE The source supports reading if an account is enabled or disabled. * MANAGER_LOOKUP: The source supports looking up managers as they are encountered in a feed. This is the opposite of NO_RANDOM_ACCESS. * NO_RANDOM_ACCESS: The source does not support random access and the getObject() methods should not be called and expected to perform. * PROXY: The source can serve as a proxy for another source. When an source has a proxy, all connector calls made with that source are redirected through the connector for the proxy source. * SEARCH * TEMPLATE * UNLOCK: The source supports reading if an account is locked or unlocked. * UNSTRUCTURED_TARGETS: The source supports returning unstructured Targets. * SHAREPOINT_TARGET: The source supports returning unstructured Target data for SharePoint. It will be typically used by AD, LDAP sources. * PROVISIONING: The source can both read and write accounts. Having this feature implies that the provision() method is implemented. It also means that direct and target permissions can also be provisioned if they can be returned by aggregation. * GROUP_PROVISIONING: The source can both read and write groups. Having this feature implies that the provision() method is implemented. * SYNC_PROVISIONING: The source can provision accounts synchronously. * PASSWORD: The source can provision password changes. Since sources can never read passwords, this is should only be used in conjunction with the PROVISIONING feature. * CURRENT_PASSWORD: Some source types support verification of the current password * ACCOUNT_ONLY_REQUEST: The source supports requesting accounts without entitlements. * ADDITIONAL_ACCOUNT_REQUEST: The source supports requesting additional accounts. * NO_AGGREGATION: A source that does not support aggregation. * GROUPS_HAVE_MEMBERS: The source models group memberships with a member attribute on the group object rather than a groups attribute on the account object. This effects the implementation of delta account aggregation. * NO_PERMISSIONS_PROVISIONING: Indicates that the connector cannot provision direct or target permissions for accounts. When DIRECT_PERMISSIONS and PROVISIONING features are present, it is assumed that the connector can also provision direct permissions. This feature disables that assumption and causes permission request to be converted to work items for accounts. * NO_GROUP_PERMISSIONS_PROVISIONING: Indicates that the connector cannot provision direct or target permissions for groups. When DIRECT_PERMISSIONS and PROVISIONING features are present, it is assumed that the connector can also provision direct permissions. This feature disables that assumption and causes permission request to be converted to work items for groups. * NO_UNSTRUCTURED_TARGETS_PROVISIONING: This string will be replaced by NO_GROUP_PERMISSIONS_PROVISIONING and NO_PERMISSIONS_PROVISIONING. * NO_DIRECT_PERMISSIONS_PROVISIONING: This string will be replaced by NO_GROUP_PERMISSIONS_PROVISIONING and NO_PERMISSIONS_PROVISIONING. * USES_UUID: Connectivity 2.0 flag used to indicate that the connector supports a compound naming structure. * PREFER_UUID: Used in ISC Provisioning AND Aggregation to decide if it should prefer account.uuid to account.nativeIdentity when data is read in through aggregation OR pushed out through provisioning. * ARM_SECURITY_EXTRACT: Indicates the application supports Security extracts for ARM * ARM_UTILIZATION_EXTRACT: Indicates the application supports Utilization extracts for ARM * ARM_CHANGELOG_EXTRACT: Indicates the application supports Change-log extracts for ARM
.PARAMETER Configuration
Holds any extra configuration data that the schema may require.
.PARAMETER Attributes
The attribute definitions which form the schema.
.PARAMETER Created
The date the Schema was created.
.PARAMETER Modified
The date the Schema was last modified.
.OUTPUTS

Schema<PSCustomObject>
#>

function Initialize-V2024Schema {
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
        ${NativeObjectType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityAttribute},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayAttribute},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HierarchyAttribute},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IncludePermissions},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("AUTHENTICATE", "COMPOSITE", "DIRECT_PERMISSIONS", "DISCOVER_SCHEMA", "ENABLE", "MANAGER_LOOKUP", "NO_RANDOM_ACCESS", "PROXY", "SEARCH", "TEMPLATE", "UNLOCK", "UNSTRUCTURED_TARGETS", "SHAREPOINT_TARGET", "PROVISIONING", "GROUP_PROVISIONING", "SYNC_PROVISIONING", "PASSWORD", "CURRENT_PASSWORD", "ACCOUNT_ONLY_REQUEST", "ADDITIONAL_ACCOUNT_REQUEST", "NO_AGGREGATION", "GROUPS_HAVE_MEMBERS", "NO_PERMISSIONS_PROVISIONING", "NO_GROUP_PERMISSIONS_PROVISIONING", "NO_UNSTRUCTURED_TARGETS_PROVISIONING", "NO_DIRECT_PERMISSIONS_PROVISIONING", "PREFER_UUID", "ARM_SECURITY_EXTRACT", "ARM_UTILIZATION_EXTRACT", "ARM_CHANGELOG_EXTRACT", "USES_UUID", "APPLICATION_DISCOVERY")]
        [String[]]
        ${Features},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Configuration},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024Schema' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "nativeObjectType" = ${NativeObjectType}
            "identityAttribute" = ${IdentityAttribute}
            "displayAttribute" = ${DisplayAttribute}
            "hierarchyAttribute" = ${HierarchyAttribute}
            "includePermissions" = ${IncludePermissions}
            "features" = ${Features}
            "configuration" = ${Configuration}
            "attributes" = ${Attributes}
            "created" = ${Created}
            "modified" = ${Modified}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Schema<PSCustomObject>

.DESCRIPTION

Convert from JSON to Schema<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Schema<PSCustomObject>
#>
function ConvertFrom-V2024JsonToSchema {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024Schema' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024Schema
        $AllProperties = ("id", "name", "nativeObjectType", "identityAttribute", "displayAttribute", "hierarchyAttribute", "includePermissions", "features", "configuration", "attributes", "created", "modified")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nativeObjectType"))) { #optional property not found
            $NativeObjectType = $null
        } else {
            $NativeObjectType = $JsonParameters.PSobject.Properties["nativeObjectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityAttribute"))) { #optional property not found
            $IdentityAttribute = $null
        } else {
            $IdentityAttribute = $JsonParameters.PSobject.Properties["identityAttribute"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayAttribute"))) { #optional property not found
            $DisplayAttribute = $null
        } else {
            $DisplayAttribute = $JsonParameters.PSobject.Properties["displayAttribute"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hierarchyAttribute"))) { #optional property not found
            $HierarchyAttribute = $null
        } else {
            $HierarchyAttribute = $JsonParameters.PSobject.Properties["hierarchyAttribute"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "includePermissions"))) { #optional property not found
            $IncludePermissions = $null
        } else {
            $IncludePermissions = $JsonParameters.PSobject.Properties["includePermissions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "features"))) { #optional property not found
            $Features = $null
        } else {
            $Features = $JsonParameters.PSobject.Properties["features"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "configuration"))) { #optional property not found
            $Configuration = $null
        } else {
            $Configuration = $JsonParameters.PSobject.Properties["configuration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
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

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "nativeObjectType" = ${NativeObjectType}
            "identityAttribute" = ${IdentityAttribute}
            "displayAttribute" = ${DisplayAttribute}
            "hierarchyAttribute" = ${HierarchyAttribute}
            "includePermissions" = ${IncludePermissions}
            "features" = ${Features}
            "configuration" = ${Configuration}
            "attributes" = ${Attributes}
            "created" = ${Created}
            "modified" = ${Modified}
        }

        return $PSO
    }

}

