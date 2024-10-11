# LauncherOwner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Owner type | 
**Id** | **String** | Owner ID | 

## Examples

- Prepare the resource
```powershell
$LauncherOwner = Initialize-PSSailpoint.BetaLauncherOwner  -Type IDENTITY `
 -Id 123180847373330f0173c7e1756b6890
```

- Convert the resource to JSON
```powershell
$LauncherOwner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

