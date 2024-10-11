# StartLauncher200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InteractiveProcessId** | **String** | ID of the Interactive Process that was launched | 

## Examples

- Prepare the resource
```powershell
$StartLauncher200Response = Initialize-PSSailpoint.BetaStartLauncher200Response  -InteractiveProcessId 5da68cfe-2d60-4b09-858f-0d03acd2f47a
```

- Convert the resource to JSON
```powershell
$StartLauncher200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

