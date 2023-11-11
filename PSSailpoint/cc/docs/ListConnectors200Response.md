# ListConnectors200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Total** | **Decimal** |  | [optional] 
**Items** | [**ListConnectors200ResponseItemsInner[]**](ListConnectors200ResponseItemsInner.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ListConnectors200Response = Initialize-CCListConnectors200Response  -Total null `
 -Items null
```

- Convert the resource to JSON
```powershell
$ListConnectors200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

