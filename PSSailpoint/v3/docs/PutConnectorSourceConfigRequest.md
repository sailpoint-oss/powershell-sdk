# PutConnectorSourceConfigRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**File** | **System.IO.FileInfo** | connector source config xml file | 

## Examples

- Prepare the resource
```powershell
$PutConnectorSourceConfigRequest = Initialize-PSSailpoint.V3PutConnectorSourceConfigRequest  -File null
```

- Convert the resource to JSON
```powershell
$PutConnectorSourceConfigRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

