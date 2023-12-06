# SpConfigImportJobStatusAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | This message contains additional information about the overall status of the job. | 
**Completed** | **System.DateTime** | The time the job was completed. | 

## Examples

- Prepare the resource
```powershell
$SpConfigImportJobStatusAllOf = Initialize-PSSailpointBetaSpConfigImportJobStatusAllOf  -Message Download import results for details. `
 -Completed 2021-05-11T22:23:16Z
```

- Convert the resource to JSON
```powershell
$SpConfigImportJobStatusAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

