# BackupOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IncludeTypes** | **String[]** | Object type names to be included in a Configuration Hub backup command. | [optional] 
**ObjectOptions** | [**System.Collections.Hashtable**](ObjectExportImportNames.md) | Additional options targeting specific objects related to each item in the includeTypes field. | [optional] 

## Examples

- Prepare the resource
```powershell
$BackupOptions = Initialize-PSSailpoint.V3BackupOptions  -IncludeTypes null `
 -ObjectOptions {TRIGGER_SUBSCRIPTION&#x3D;{includedNames&#x3D;[Trigger Subscription name]}}
```

- Convert the resource to JSON
```powershell
$BackupOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

