# ImportConnectorConfigRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**File** | **System.IO.FileInfo** | This is the connector config zip bundle which gets uploaded. | [optional] 

## Examples

- Prepare the resource
```powershell
$ImportConnectorConfigRequest = Initialize-CCImportConnectorConfigRequest  -File null
```

- Convert the resource to JSON
```powershell
$ImportConnectorConfigRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

