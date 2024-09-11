# AccessProfile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the Access Profile | [optional] [readonly] 
**Name** | **String** | Name of the Access Profile | 
**Description** | **String** | Information about the Access Profile | [optional] 
**Created** | **System.DateTime** | Date the Access Profile was created | [optional] [readonly] 
**Modified** | **System.DateTime** | Date the Access Profile was last modified. | [optional] [readonly] 
**Enabled** | **Boolean** | Whether the Access Profile is enabled. If the Access Profile is enabled then you must include at least one Entitlement. | [optional] [default to $true]
**Owner** | [**OwnerReference**](OwnerReference.md) |  | 
**Source** | [**AccessProfileSourceRef**](AccessProfileSourceRef.md) |  | 
**Entitlements** | [**EntitlementRef[]**](EntitlementRef.md) | A list of entitlements associated with the Access Profile. If enabled is false this is allowed to be empty otherwise it needs to contain at least one Entitlement. | [optional] 
**Requestable** | **Boolean** | Whether the Access Profile is requestable via access request. Currently, making an Access Profile non-requestable is only supported  for customers enabled with the new Request Center. Otherwise, attempting to create an Access Profile with a value  **false** in this field results in a 400 error. | [optional] [default to $true]
**AccessRequestConfig** | [**Requestability**](Requestability.md) |  | [optional] 
**RevocationRequestConfig** | [**Revocability**](Revocability.md) |  | [optional] 
**Segments** | **String[]** | List of IDs of segments, if any, to which this Access Profile is assigned. | [optional] 
**ProvisioningCriteria** | [**ProvisioningCriteriaLevel1**](ProvisioningCriteriaLevel1.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfile = Initialize-Tm.V3AccessProfile  -Id 2c91808a7190d06e01719938fcd20792 `
 -Name Employee-database-read-write `
 -Description Collection of entitlements to read/write the employee database `
 -Created 2021-03-01T22:32:58.104Z `
 -Modified 2021-03-02T20:22:28.104Z `
 -Enabled true `
 -Owner null `
 -Source null `
 -Entitlements null `
 -Requestable true `
 -AccessRequestConfig null `
 -RevocationRequestConfig null `
 -Segments [f7b1b8a3-5fed-4fd4-ad29-82014e137e19, 29cb6c06-1da8-43ea-8be4-b3125f248f2a] `
 -ProvisioningCriteria null
```

- Convert the resource to JSON
```powershell
$AccessProfile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

