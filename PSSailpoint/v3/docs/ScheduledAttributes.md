# ScheduledAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CronString** | **String** | A valid CRON expression | [optional] 
**Frequency** | **String** | Frequency of execution | 
**TimeZone** | **String** | Time zone identifier | [optional] 
**WeeklyDays** | **String[]** | Scheduled days of the week for execution | [optional] 
**WeeklyTimes** | **String[]** | Scheduled execution times | [optional] 

## Examples

- Prepare the resource
```powershell
$ScheduledAttributes = Initialize-PSSailpoint.V3ScheduledAttributes  -CronString 0 9 * * 1 `
 -Frequency null `
 -TimeZone America/Chicago `
 -WeeklyDays Monday `
 -WeeklyTimes Monday
```

- Convert the resource to JSON
```powershell
$ScheduledAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

