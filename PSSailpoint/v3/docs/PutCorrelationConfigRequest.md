# PutCorrelationConfigRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**File** | **System.IO.FileInfo** | connector correlation config xml file | 

## Examples

- Prepare the resource
```powershell
$PutCorrelationConfigRequest = Initialize-PSSailpoint.V3PutCorrelationConfigRequest  -File null
```

- Convert the resource to JSON
```powershell
$PutCorrelationConfigRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

