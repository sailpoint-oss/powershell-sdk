# SourceAppPatchDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The source app id | [optional] 
**CloudAppId** | **String** | The deprecated source app id | [optional] 
**Name** | **String** | The source app name | [optional] 
**Created** | **System.DateTime** | Time when the source app was created | [optional] 
**Modified** | **System.DateTime** | Time when the source app was last modified | [optional] 
**Enabled** | **Boolean** | True if the source app is enabled | [optional] [default to $false]
**ProvisionRequestEnabled** | **Boolean** | True if the source app is provision request enabled | [optional] [default to $false]
**Description** | **String** | The description of the source app | [optional] 
**MatchAllAccounts** | **Boolean** | True if the source app match all accounts | [optional] [default to $false]
**AppCenterEnabled** | **Boolean** | True if the source app is shown in the app center | [optional] [default to $true]
**AccessProfiles** | **String[]** | List of IDs of access profiles | [optional] 
**AccountSource** | [**SourceAppAccountSource**](SourceAppAccountSource.md) |  | [optional] 
**Owner** | [**SourceAppOwner**](SourceAppOwner.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceAppPatchDto = Initialize-Tm.V2024SourceAppPatchDto  -Id 2c91808874ff91550175097daaec161c `
 -CloudAppId 9854520 `
 -Name my app `
 -Created 2020-10-08T18:33:52.029Z `
 -Modified 2020-10-08T18:33:52.029Z `
 -Enabled true `
 -ProvisionRequestEnabled true `
 -Description the source app for engineers `
 -MatchAllAccounts true `
 -AppCenterEnabled true `
 -AccessProfiles [2c9180857725c14301772a93bb77242d, c9dc28e148a24d65b3ccb5fb8ca5ddd9] `
 -AccountSource null `
 -Owner null
```

- Convert the resource to JSON
```powershell
$SourceAppPatchDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

