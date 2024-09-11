# ObjectExportImportOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IncludedIds** | **String[]** | Object ids to be included in an import or export. | [optional] 
**IncludedNames** | **String[]** | Object names to be included in an import or export. | [optional] 

## Examples

- Prepare the resource
```powershell
$ObjectExportImportOptions = Initialize-Tm.V2024ObjectExportImportOptions  -IncludedIds null `
 -IncludedNames null
```

- Convert the resource to JSON
```powershell
$ObjectExportImportOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

