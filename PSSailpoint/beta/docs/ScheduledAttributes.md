# ScheduledAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CronString** | **String** | A valid CRON expression | 

## Examples

- Prepare the resource
```powershell
$ScheduledAttributes = Initialize-BetaScheduledAttributes  -CronString 0 * */3 */5 *
```

- Convert the resource to JSON
```powershell
$ScheduledAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

