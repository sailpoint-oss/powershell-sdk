# Schedule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Determines the overall schedule cadence. In general, all time period fields smaller than the chosen type can be configured. For example, a DAILY schedule can have &#39;hours&#39; set, but not &#39;days&#39;; a WEEKLY schedule can have both &#39;hours&#39; and &#39;days&#39; set. | 
**Months** | [**ScheduleMonths**](ScheduleMonths.md) |  | [optional] 
**Days** | [**ScheduleDays**](ScheduleDays.md) |  | [optional] 
**Hours** | [**ScheduleHours**](ScheduleHours.md) |  | 
**Expiration** | **System.DateTime** | Specifies the time after which this schedule will no longer occur. | [optional] 
**TimeZoneId** | **String** | The time zone to use when running the schedule. For instance, if the schedule is scheduled to run at 1AM, and this field is set to &quot;&quot;CST&quot;&quot;, the schedule will run at 1AM CST. | [optional] 

## Examples

- Prepare the resource
```powershell
$Schedule = Initialize-BetaSchedule  -Type WEEKLY `
 -Months null `
 -Days null `
 -Hours null `
 -Expiration null `
 -TimeZoneId CST
```

- Convert the resource to JSON
```powershell
$Schedule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

