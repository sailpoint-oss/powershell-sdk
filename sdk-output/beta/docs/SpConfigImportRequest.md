# SpConfigImportRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | **String** | Name of JSON file containing the objects to be imported. | 
**Options** | [**ImportOptions**](ImportOptions.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SpConfigImportRequest = Initialize-PSSailpointBetaSpConfigImportRequest  -VarData null `
 -Options null
```

- Convert the resource to JSON
```powershell
$SpConfigImportRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

