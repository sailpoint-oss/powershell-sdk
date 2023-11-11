# SourceCode
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Version** | **String** | the version of the code | 
**Script** | **String** | The code | 

## Examples

- Prepare the resource
```powershell
$SourceCode = Initialize-BetaSourceCode  -Version 1.0 `
 -Script return &quot;Mr. &quot; + firstName;
```

- Convert the resource to JSON
```powershell
$SourceCode | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

