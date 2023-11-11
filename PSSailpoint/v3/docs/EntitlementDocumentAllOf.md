# EntitlementDocumentAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
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
$EntitlementDocumentAllOf = Initialize-EntitlementDocumentAllOf  -Modified 2018-06-25T20:22:28.104Z `
 -Synced 2018-06-25T20:22:28.104Z `
 -DisplayName Admin `
 -Source null `
 -Privileged false `
 -IdentityCount 3 `
 -Tags [TAG_1, TAG_2]
```

- Convert the resource to JSON
```powershell
$EntitlementDocumentAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

