# ReviewableEntitlementAccount
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NativeIdentity** | **String** | The native identity for this account | [optional] 
**Disabled** | **Boolean** | Indicates whether this account is currently disabled | [optional] [default to $false]
**Locked** | **Boolean** | Indicates whether this account is currently locked | [optional] [default to $false]
**Type** | [**DtoType**](DtoType.md) |  | [optional] 
**Id** | **String** | The id associated with the account | [optional] 
**Name** | **String** | The account name | [optional] 
**Created** | **System.DateTime** | When the account was created | [optional] 
**Modified** | **System.DateTime** | When the account was last modified | [optional] 

## Examples

- Prepare the resource
```powershell
$ReviewableEntitlementAccount = Initialize-ReviewableEntitlementAccount  -NativeIdentity CN&#x3D;Alison Ferguso `
 -Disabled false `
 -Locked false `
 -Type null `
 -Id 2c9180857182305e0171993737eb29e6 `
 -Name Alison Ferguso `
 -Created 2020-04-20T20:11:05.067Z `
 -Modified 2020-05-20T18:57:16.987Z
```

- Convert the resource to JSON
```powershell
$ReviewableEntitlementAccount | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

