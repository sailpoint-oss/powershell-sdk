# BaseAccount
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the referenced object. | [optional] 
**Name** | **String** | The human readable name of the referenced object. | [optional] 
**AccountId** | **String** | The ID of the account | [optional] 
**Source** | [**AccountSource**](AccountSource.md) |  | [optional] 
**Disabled** | **Boolean** | Indicates if the account is disabled | [optional] 
**Locked** | **Boolean** | Indicates if the account is locked | [optional] 
**Privileged** | **Boolean** |  | [optional] 
**ManuallyCorrelated** | **Boolean** | Indicates if the account has been manually correlated to an identity | [optional] 
**PasswordLastSet** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**EntitlementAttributes** | [**System.Collections.Hashtable**](AnyType.md) | a map or dictionary of key/value pairs | [optional] 
**Created** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 

## Examples

- Prepare the resource
```powershell
$BaseAccount = Initialize-BaseAccount  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name John Doe `
 -AccountId john.doe `
 -Source null `
 -Disabled false `
 -Locked false `
 -Privileged false `
 -ManuallyCorrelated false `
 -PasswordLastSet 2018-06-25T20:22:28.104Z `
 -EntitlementAttributes {moderator&#x3D;true, admin&#x3D;true, trust_level&#x3D;4} `
 -Created 2018-06-25T20:22:28.104Z
```

- Convert the resource to JSON
```powershell
$BaseAccount | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

