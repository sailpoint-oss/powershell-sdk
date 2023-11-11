# Schema
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the Schema. | [optional] 
**Name** | **String** | The name of the Schema. | [optional] 
**NativeObjectType** | **String** | The name of the object type on the native system that the schema represents. | [optional] 
**IdentityAttribute** | **String** | The name of the attribute used to calculate the unique identifier for an object in the schema. | [optional] 
**DisplayAttribute** | **String** | The name of the attribute used to calculate the display value for an object in the schema. | [optional] 
**HierarchyAttribute** | **String** | The name of the attribute whose values represent other objects in a hierarchy. Only relevant to group schemas. | [optional] 
**IncludePermissions** | **Boolean** | Flag indicating whether or not the include permissions with the object data when aggregating the schema. | [optional] 
**Features** | [**SourceFeature[]**](SourceFeature.md) | The features that the schema supports. | [optional] 
**Configuration** | [**SystemCollectionsHashtable**](.md) | Holds any extra configuration data that the schema may require. | [optional] 
**Attributes** | [**AttributeDefinition[]**](AttributeDefinition.md) | The attribute definitions which form the schema. | [optional] 
**Created** | **System.DateTime** | The date the Schema was created. | [optional] 
**Modified** | **System.DateTime** | The date the Schema was last modified. | [optional] 

## Examples

- Prepare the resource
```powershell
$Schema = Initialize-BetaSchema  -Id 2c9180835d191a86015d28455b4a2329 `
 -Name account `
 -NativeObjectType User `
 -IdentityAttribute sAMAccountName `
 -DisplayAttribute distinguishedName `
 -HierarchyAttribute memberOf `
 -IncludePermissions false `
 -Features [PROVISIONING, NO_PERMISSIONS_PROVISIONING, GROUPS_HAVE_MEMBERS] `
 -Configuration {groupMemberAttribute&#x3D;member} `
 -Attributes [{name&#x3D;sAMAccountName, type&#x3D;STRING, isMultiValued&#x3D;false, isEntitlement&#x3D;false, isGroup&#x3D;false}, {name&#x3D;memberOf, type&#x3D;STRING, schema&#x3D;{type&#x3D;CONNECTOR_SCHEMA, id&#x3D;2c9180887671ff8c01767b4671fc7d60, name&#x3D;group}, description&#x3D;Group membership, isMultiValued&#x3D;true, isEntitlement&#x3D;true, isGroup&#x3D;true}] `
 -Created 2019-12-24T22:32:58.104Z `
 -Modified 2019-12-31T20:22:28.104Z
```

- Convert the resource to JSON
```powershell
$Schema | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

