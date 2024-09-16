# ReviewableAccessProfile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the Access Profile | [optional] 
**Name** | **String** | Name of the Access Profile | [optional] 
**Description** | **String** | Information about the Access Profile | [optional] 
**Privileged** | **Boolean** | Indicates if the entitlement is a privileged entitlement | [optional] 
**CloudGoverned** | **Boolean** | True if the entitlement is cloud governed | [optional] 
**EndDate** | **System.DateTime** | The date at which a user&#39;s access expires | [optional] 
**Owner** | [**IdentityReferenceWithNameAndEmail**](IdentityReferenceWithNameAndEmail.md) |  | [optional] 
**Entitlements** | [**ReviewableEntitlement[]**](ReviewableEntitlement.md) | A list of entitlements associated with this Access Profile | [optional] 
**Created** | **System.DateTime** | Date the Access Profile was created. | [optional] 
**Modified** | **System.DateTime** | Date the Access Profile was last modified. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReviewableAccessProfile = Initialize-PSSailpoint.V2024ReviewableAccessProfile  -Id 2c91808a7190d06e01719938fcd20792 `
 -Name Employee-database-read-write `
 -Description Collection of entitlements to read/write the employee database `
 -Privileged false `
 -CloudGoverned false `
 -EndDate 2021-12-25T00:00Z `
 -Owner null `
 -Entitlements null `
 -Created 2021-01-01T22:32:58.104Z `
 -Modified 2021-02-01T22:32:58.104Z
```

- Convert the resource to JSON
```powershell
$ReviewableAccessProfile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

