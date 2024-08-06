# ObjectImportResult1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Infos** | [**SpConfigMessage1[]**](SpConfigMessage1.md) | Informational messages returned from the target service on import. | 
**Warnings** | [**SpConfigMessage1[]**](SpConfigMessage1.md) | Warning messages returned from the target service on import. | 
**Errors** | [**SpConfigMessage1[]**](SpConfigMessage1.md) | Error messages returned from the target service on import. | 
**ImportedObjects** | [**ImportObject[]**](ImportObject.md) | References to objects that were created or updated by the import. | 

## Examples

- Prepare the resource
```powershell
$ObjectImportResult1 = Initialize-PSSailpointV2024ObjectImportResult1  -Infos null `
 -Warnings null `
 -Errors null `
 -ImportedObjects null
```

- Convert the resource to JSON
```powershell
$ObjectImportResult1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

