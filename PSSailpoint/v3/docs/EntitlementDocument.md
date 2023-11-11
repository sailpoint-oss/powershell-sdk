# EntitlementDocument
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the referenced object. | 
**Name** | **String** | The human readable name of the referenced object. | 
**Type** | [**DocumentType**](DocumentType.md) |  | 
**Description** | **String** | A description of the entitlement | [optional] 
**Attribute** | **String** | The name of the entitlement attribute | [optional] 
**Value** | **String** | The value of the entitlement | [optional] 
**Modified** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Synced** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**DisplayName** | **String** | The display name of the entitlement | [optional] 
**Source** | [**Reference1**](Reference1.md) |  | [optional] 
**Privileged** | **Boolean** |  | [optional] 
**IdentityCount** | **Int32** |  | [optional] 
**Tags** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementDocument = Initialize-EntitlementDocument  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name John Doe `
 -Type null `
 -Description The admin privilege `
 -Attribute admin `
 -Value true `
 -Modified 2018-06-25T20:22:28.104Z `
 -Synced 2018-06-25T20:22:28.104Z `
 -DisplayName Admin `
 -Source null `
 -Privileged false `
 -IdentityCount 3 `
 -Tags [TAG_1, TAG_2]
```

- Convert the resource to JSON
```powershell
$EntitlementDocument | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

