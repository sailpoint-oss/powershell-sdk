# ExportOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExcludeTypes** | **String[]** | Object type names to be excluded from an sp-config export command. | [optional] 
**IncludeTypes** | **String[]** | Object type names to be included in an sp-config export command. IncludeTypes takes precedence over excludeTypes. | [optional] 
**ObjectOptions** | [**System.Collections.Hashtable**](ObjectExportImportOptions.md) | Additional options targeting specific objects related to each item in the includeTypes field | [optional] 

## Examples

- Prepare the resource
```powershell
$ExportOptions = Initialize-Tm.BetaExportOptions  -ExcludeTypes null `
 -IncludeTypes null `
 -ObjectOptions {TRIGGER_SUBSCRIPTION&#x3D;{includedIds&#x3D;[be9e116d-08e1-49fc-ab7f-fa585e96c9e4], includedNames&#x3D;[Test 2]}}
```

- Convert the resource to JSON
```powershell
$ExportOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

