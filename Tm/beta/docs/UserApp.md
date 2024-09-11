# UserApp
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The user app id | [optional] 
**Created** | **System.DateTime** | Time when the user app was created | [optional] 
**Modified** | **System.DateTime** | Time when the user app was last modified | [optional] 
**HasMultipleAccounts** | **Boolean** | True if the owner has multiple accounts for the source | [optional] [default to $false]
**UseForPasswordManagement** | **Boolean** | True if the source has password feature | [optional] [default to $false]
**ProvisionRequestEnabled** | **Boolean** | True if the source app related to the user app is provision request enabled | [optional] [default to $false]
**AppCenterEnabled** | **Boolean** | True if the source app related to the user app is shown in the app center | [optional] [default to $true]
**SourceApp** | [**UserAppSourceApp**](UserAppSourceApp.md) |  | [optional] 
**Source** | [**UserAppSource**](UserAppSource.md) |  | [optional] 
**Account** | [**UserAppAccount**](UserAppAccount.md) |  | [optional] 
**Owner** | [**UserAppOwner**](UserAppOwner.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserApp = Initialize-Tm.BetaUserApp  -Id 2c91808874ff91550175097daaec161c `
 -Created 2020-10-08T18:33:52.029Z `
 -Modified 2020-10-08T18:33:52.029Z `
 -HasMultipleAccounts false `
 -UseForPasswordManagement true `
 -ProvisionRequestEnabled true `
 -AppCenterEnabled true `
 -SourceApp null `
 -Source null `
 -Account null `
 -Owner null
```

- Convert the resource to JSON
```powershell
$UserApp | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

