# Schedule1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of the Schedule. | 
**CronExpression** | **String** | The cron expression of the schedule. | 

## Examples

- Prepare the resource
```powershell
$Schedule1 = Initialize-PSSailpoint.V2024Schedule1  -Type ACCOUNT_AGGREGATION `
 -CronExpression 0 0 5,13,21 * * ?
```

- Convert the resource to JSON
```powershell
$Schedule1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

