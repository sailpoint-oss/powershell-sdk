# NonEmployeeBulkUploadStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** | Returns the following values indicating the progress or result of the bulk upload job. &quot;&quot;PENDING&quot;&quot; means the job is queued and waiting to be processed. &quot;&quot;IN_PROGRESS&quot;&quot; means the job is currently being processed. &quot;&quot;COMPLETED&quot;&quot; means the job has been completed without any errors. &quot;&quot;ERROR&quot;&quot; means the job failed to process with errors. null means job has been submitted to the source.  | [optional] 

## Examples

- Prepare the resource
```powershell
$NonEmployeeBulkUploadStatus = Initialize-Tm.V3NonEmployeeBulkUploadStatus  -Status PENDING
```

- Convert the resource to JSON
```powershell
$NonEmployeeBulkUploadStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

