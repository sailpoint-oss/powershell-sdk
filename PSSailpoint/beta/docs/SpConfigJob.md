# SpConfigJob
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**JobId** | **String** | Unique id assigned to this job. | 
**Status** | **String** | Status of the job. | 
**Type** | **String** | Type of the job, either export or import. | 
**Message** | **String** | This message contains additional information about the overall status of the job. | 
**Description** | **String** | Optional user defined description/name for export job. | 
**Expiration** | **System.DateTime** | The time until which the artifacts will be available for download. | 
**Created** | **System.DateTime** | The time the job was started. | 
**Modified** | **System.DateTime** | The time of the last update to the job. | 
**Completed** | **System.DateTime** | The time the job was completed. | 

## Examples

- Prepare the resource
```powershell
$SpConfigJob = Initialize-BetaSpConfigJob  -JobId 3469b87d-48ca-439a-868f-2160001da8c1 `
 -Status COMPLETE `
 -Type IMPORT `
 -Message Download import results for details. `
 -Description ETS configuration objects from Acme-Solar sandbox `
 -Expiration 2021-05-11T22:23:16Z `
 -Created 2021-05-11T22:23:16Z `
 -Modified 2021-05-11T22:23:16Z `
 -Completed 2021-05-11T22:23:16Z
```

- Convert the resource to JSON
```powershell
$SpConfigJob | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

