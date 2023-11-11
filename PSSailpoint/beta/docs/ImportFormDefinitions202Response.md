# ImportFormDefinitions202Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Errors** | [**ImportFormDefinitions202ResponseErrorsInner[]**](ImportFormDefinitions202ResponseErrorsInner.md) |  | [optional] 
**ImportedObjects** | [**ExportFormDefinitionsByTenant200ResponseInner[]**](ExportFormDefinitionsByTenant200ResponseInner.md) |  | [optional] 
**Infos** | [**ImportFormDefinitions202ResponseErrorsInner[]**](ImportFormDefinitions202ResponseErrorsInner.md) |  | [optional] 
**Warnings** | [**ImportFormDefinitions202ResponseErrorsInner[]**](ImportFormDefinitions202ResponseErrorsInner.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ImportFormDefinitions202Response = Initialize-BetaImportFormDefinitions202Response  -Errors null `
 -ImportedObjects null `
 -Infos null `
 -Warnings null
```

- Convert the resource to JSON
```powershell
$ImportFormDefinitions202Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

