# PutSourceTemplateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**File** | **System.IO.FileInfo** | connector source template xml file | 

## Examples

- Prepare the resource
```powershell
$PutSourceTemplateRequest = Initialize-PSSailpoint.V2024PutSourceTemplateRequest  -File null
```

- Convert the resource to JSON
```powershell
$PutSourceTemplateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

