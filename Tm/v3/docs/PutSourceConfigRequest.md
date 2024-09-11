# PutSourceConfigRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**File** | **System.IO.FileInfo** | connector source config xml file | 

## Examples

- Prepare the resource
```powershell
$PutSourceConfigRequest = Initialize-Tm.V3PutSourceConfigRequest  -File null
```

- Convert the resource to JSON
```powershell
$PutSourceConfigRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

