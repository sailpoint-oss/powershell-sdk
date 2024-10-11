# LauncherRequestReference
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of Launcher reference | 
**Id** | **String** | ID of Launcher reference | 

## Examples

- Prepare the resource
```powershell
$LauncherRequestReference = Initialize-PSSailpoint.BetaLauncherRequestReference  -Type WORKFLOW `
 -Id 2fd6ff94-2081-4d29-acbc-83a0a2f744a5
```

- Convert the resource to JSON
```powershell
$LauncherRequestReference | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

