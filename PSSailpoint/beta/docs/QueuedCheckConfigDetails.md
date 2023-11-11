# QueuedCheckConfigDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProvisioningStatusCheckIntervalMinutes** | **String** | interval in minutes between status checks | 
**ProvisioningMaxStatusCheckDays** | **String** | maximum number of days to check | 

## Examples

- Prepare the resource
```powershell
$QueuedCheckConfigDetails = Initialize-BetaQueuedCheckConfigDetails  -ProvisioningStatusCheckIntervalMinutes 30 `
 -ProvisioningMaxStatusCheckDays 2
```

- Convert the resource to JSON
```powershell
$QueuedCheckConfigDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

