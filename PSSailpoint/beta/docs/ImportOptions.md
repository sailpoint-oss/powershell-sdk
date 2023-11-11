# ImportOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExcludeTypes** | **String[]** | Object type names to be excluded from an sp-config export command. | [optional] 
**IncludeTypes** | **String[]** | Object type names to be included in an sp-config export command. IncludeTypes takes precedence over excludeTypes. | [optional] 
**ObjectOptions** | [**System.Collections.Hashtable**](ObjectExportImportOptions.md) | Additional options targeting specific objects related to each item in the includeTypes field | [optional] 
**DefaultReferences** | **String[]** | List of object types that can be used to resolve references on import. | [optional] 
**ExcludeBackup** | **Boolean** | By default, every import will first export all existing objects supported by sp-config as a backup before the import is attempted. If excludeBackup is true, the backup will not be performed. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$ImportOptions = Initialize-BetaImportOptions  -ExcludeTypes null `
 -IncludeTypes null `
 -ObjectOptions {TRIGGER_SUBSCRIPTION&#x3D;{includedIds&#x3D;[be9e116d-08e1-49fc-ab7f-fa585e96c9e4], includedNames&#x3D;[Test 2]}} `
 -DefaultReferences null `
 -ExcludeBackup false
```

- Convert the resource to JSON
```powershell
$ImportOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

