# CreateUploadedConfigurationRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | **System.IO.FileInfo** | JSON file containing the objects to be imported. | 
**Name** | **String** | Name that will be assigned to the uploaded configuration file. | 

## Examples

- Prepare the resource
```powershell
$CreateUploadedConfigurationRequest = Initialize-PSSailpoint.V2024CreateUploadedConfigurationRequest  -VarData null `
 -Name null
```

- Convert the resource to JSON
```powershell
$CreateUploadedConfigurationRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
