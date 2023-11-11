# AccessProfileDocument
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the referenced object. | 
**Name** | **String** | The human readable name of the referenced object. | 
**Type** | [**DocumentType**](DocumentType.md) |  | 
**Description** | **String** | The description of the access item | [optional] 
**Created** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Modified** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Synced** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Enabled** | **Boolean** |  | [optional] 
**Requestable** | **Boolean** | Indicates if the access can be requested | [optional] 
**RequestCommentsRequired** | **Boolean** | Indicates if comments are required when requesting access | [optional] 
**Owner** | [**Owner**](Owner.md) |  | [optional] 
**Source** | [**Reference1**](Reference1.md) |  | [optional] 
**Entitlements** | [**BaseEntitlement[]**](BaseEntitlement.md) |  | [optional] 
**EntitlementCount** | **Int32** |  | [optional] 
**Tags** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileDocument = Initialize-AccessProfileDocument  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name John Doe `
 -Type null `
 -Description The admin role `
 -Created 2018-06-25T20:22:28.104Z `
 -Modified 2018-06-25T20:22:28.104Z `
 -Synced 2018-06-25T20:22:28.104Z `
 -Enabled true `
 -Requestable true `
 -RequestCommentsRequired false `
 -Owner null `
 -Source null `
 -Entitlements null `
 -EntitlementCount 5 `
 -Tags [TAG_1, TAG_2]
```

- Convert the resource to JSON
```powershell
$AccessProfileDocument | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

