# ImportUploadedBackupRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | **System.IO.FileInfo** | JSON file containing the objects to be imported. | 
**Name** | **String** | Name that will be assigned to the uploaded file. | 

## Examples

- Prepare the resource
```powershell
$ImportUploadedBackupRequest = Initialize-Tm.V2024ImportUploadedBackupRequest  -VarData null `
 -Name null
```

- Convert the resource to JSON
```powershell
$ImportUploadedBackupRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

