# ImportFormDefinitionsRequestInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Object** | [**FormDefinitionResponse**](FormDefinitionResponse.md) |  | [optional] 
**Self** | **String** |  | [optional] 
**Version** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ImportFormDefinitionsRequestInner = Initialize-PSSailpointBetaImportFormDefinitionsRequestInner  -Object null `
 -Self null `
 -Version null
```

- Convert the resource to JSON
```powershell
$ImportFormDefinitionsRequestInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

