# SourceAppCreateDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The source app name | 
**Description** | **String** | The description of the source app | 
**MatchAllAccounts** | **Boolean** | True if the source app match all accounts | [optional] [default to $false]
**AccountSource** | [**SourceAppCreateDtoAccountSource**](SourceAppCreateDtoAccountSource.md) |  | 

## Examples

- Prepare the resource
```powershell
$SourceAppCreateDto = Initialize-Tm.BetaSourceAppCreateDto  -Name my app `
 -Description the source app for engineers `
 -MatchAllAccounts true `
 -AccountSource null
```

- Convert the resource to JSON
```powershell
$SourceAppCreateDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

