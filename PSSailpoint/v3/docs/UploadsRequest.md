# UploadsRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**JobId** | **String** | Unique id assigned to this job. | 
**Status** | **String** | Status of the job. | 
**Type** | **String** | Type of the job, either Backup or Draft. | 
**Tenant** | **String** | The name of the tenant performing the upload | [optional] 
**RequesterName** | **String** | The name of the requester. | [optional] 
**Created** | **System.DateTime** | The time the job was started. | 
**Modified** | **System.DateTime** | The time of the last update to the job. | 
**Name** | **String** | The name assigned to the upload file in the request body. | [optional] 
**UserCanDelete** | **Boolean** | Is the job a regular backup job, if so is the user allowed to delete the backup file. Since this is an upload job it remains as false. | [optional] [default to $true]
**IsPartial** | **Boolean** | Is the job a regular backup job, if so is it partial. Since this is an upload job it remains as false. | [optional] [default to $false]
**BackupType** | **String** | What kind of backup is this being treated as. | [optional] 
**HydrationStatus** | **String** | have the objects contained in the upload file been hydrated. | [optional] 

## Examples

- Prepare the resource
```powershell
$UploadsRequest = Initialize-PSSailpointUploadsRequest  -JobId 3469b87d-48ca-439a-868f-2160001da8c1 `
 -Status COMPLETE `
 -Type BACKUP `
 -Tenant uploaderTenant `
 -RequesterName support `
 -Created 2021-05-11T22:23:16Z `
 -Modified 2021-05-11T22:23:16Z `
 -Name A_NEW_UPLOADED_BACKUP `
 -UserCanDelete false `
 -IsPartial false `
 -BackupType UPLOADED `
 -HydrationStatus NOT_HYDRATED
```

- Convert the resource to JSON
```powershell
$UploadsRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

