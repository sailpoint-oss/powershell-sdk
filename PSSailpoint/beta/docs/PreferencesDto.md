# PreferencesDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | The template notification key. | [optional] 
**Mediums** | [**Medium[]**](Medium.md) | List of preferred notification mediums, i.e., the mediums (or method) for which notifications are enabled. More mediums may be added in the future. | [optional] 
**Modified** | **System.DateTime** | Modified date of preference | [optional] 

## Examples

- Prepare the resource
```powershell
$PreferencesDto = Initialize-BetaPreferencesDto  -Key cloud_manual_work_item_summary `
 -Mediums [EMAIL] `
 -Modified 2020-05-15T14:37:06.909Z
```

- Convert the resource to JSON
```powershell
$PreferencesDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

