# ScheduledAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Frequency** | **String** | Frequency of execution | 
**TimeZone** | **String** | Time zone identifier | [optional] 
**CronString** | **String** |  | [optional] 
**WeeklyDays** | **String[]** | Scheduled days of the week for execution | [optional] 
**WeeklyTimes** | **String[]** | Scheduled execution times | [optional] 

## Examples

- Prepare the resource
```powershell
$ScheduledAttributes = Initialize-Tm.BetaScheduledAttributes  -Frequency null `
 -TimeZone America/Chicago `
 -CronString 0 9 * * 1 `
 -WeeklyDays Monday `
 -WeeklyTimes Monday
```

- Convert the resource to JSON
```powershell
$ScheduledAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

