# ObjectExportImportNames
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IncludedNames** | **String[]** | Object names to be included in a backup. | [optional] 

## Examples

- Prepare the resource
```powershell
$ObjectExportImportNames = Initialize-PSSailpoint.V3ObjectExportImportNames  -IncludedNames null
```

- Convert the resource to JSON
```powershell
$ObjectExportImportNames | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

