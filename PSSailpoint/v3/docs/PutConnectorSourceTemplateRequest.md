# PutConnectorSourceTemplateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**File** | **System.IO.FileInfo** | connector source template xml file | 

## Examples

- Prepare the resource
```powershell
$PutConnectorSourceTemplateRequest = Initialize-PSSailpoint.V3PutConnectorSourceTemplateRequest  -File null
```

- Convert the resource to JSON
```powershell
$PutConnectorSourceTemplateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

