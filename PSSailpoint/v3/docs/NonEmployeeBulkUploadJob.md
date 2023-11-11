# NonEmployeeBulkUploadJob
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The bulk upload job&#39;s ID. (UUID) | [optional] 
**SourceId** | **String** | The ID of the source to bulk-upload non-employees to. (UUID) | [optional] 
**Created** | **System.DateTime** | The date-time the job was submitted. | [optional] 
**Modified** | **System.DateTime** | The date-time that the job was last updated. | [optional] 
**Status** | **String** | Returns the following values indicating the progress or result of the bulk upload job. &quot;&quot;PENDING&quot;&quot; means the job is queued and waiting to be processed. &quot;&quot;IN_PROGRESS&quot;&quot; means the job is currently being processed. &quot;&quot;COMPLETED&quot;&quot; means the job has been completed without any errors. &quot;&quot;ERROR&quot;&quot; means the job failed to process with errors.  | [optional] 

## Examples

- Prepare the resource
```powershell
$NonEmployeeBulkUploadJob = Initialize-NonEmployeeBulkUploadJob  -Id 2c91808568c529c60168cca6f90cffff `
 -SourceId 2c91808568c529c60168cca6f90c1313 `
 -Created 2019-08-23T18:52:59.162Z `
 -Modified 2019-08-23T18:52:59.162Z `
 -Status PENDING
```

- Convert the resource to JSON
```powershell
$NonEmployeeBulkUploadJob | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

