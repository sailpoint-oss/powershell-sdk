# VAClusterStatusChangeEvent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** | The date and time the status change occurred. | 
**Type** | [**SystemCollectionsHashtable**](.md) | The type of the object that initiated this event. | 
**Application** | [**VAClusterStatusChangeEventApplication**](VAClusterStatusChangeEventApplication.md) |  | 
**HealthCheckResult** | [**VAClusterStatusChangeEventHealthCheckResult**](VAClusterStatusChangeEventHealthCheckResult.md) |  | 
**PreviousHealthCheckResult** | [**VAClusterStatusChangeEventPreviousHealthCheckResult**](VAClusterStatusChangeEventPreviousHealthCheckResult.md) |  | 

## Examples

- Prepare the resource
```powershell
$VAClusterStatusChangeEvent = Initialize-BetaVAClusterStatusChangeEvent  -Created 2020-06-29T22:01:50.474Z `
 -Type CLUSTER `
 -Application null `
 -HealthCheckResult null `
 -PreviousHealthCheckResult null
```

- Convert the resource to JSON
```powershell
$VAClusterStatusChangeEvent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

