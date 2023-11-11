# SourceSyncJob
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Job ID. | 
**Status** | **String** | The job status. | 
**Payload** | [**SourceSyncPayload**](SourceSyncPayload.md) |  | 

## Examples

- Prepare the resource
```powershell
$SourceSyncJob = Initialize-BetaSourceSyncJob  -Id 0f11f2a4-7c94-4bf3-a2bd-742580fe3bde `
 -Status IN_PROGRESS `
 -Payload null
```

- Convert the resource to JSON
```powershell
$SourceSyncJob | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

