# VAClusterStatusChangeEventPreviousHealthCheckResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | Detailed message of the result of the health check. | 
**ResultType** | **String** | The type of the health check result. | 
**Status** | [**SystemCollectionsHashtable**](.md) | The status of the health check. | 

## Examples

- Prepare the resource
```powershell
$VAClusterStatusChangeEventPreviousHealthCheckResult = Initialize-BetaVAClusterStatusChangeEventPreviousHealthCheckResult  -Message Test Connection failed with exception. Error message - java.lang Exception `
 -ResultType SOURCE_STATE_ERROR_CLUSTER `
 -Status Failed
```

- Convert the resource to JSON
```powershell
$VAClusterStatusChangeEventPreviousHealthCheckResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

