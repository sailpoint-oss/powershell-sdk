# Schedule2
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**ScheduleType**](ScheduleType.md) |  | 
**Months** | [**Schedule2Months**](Schedule2Months.md) |  | [optional] 
**Days** | [**Schedule2Days**](Schedule2Days.md) |  | [optional] 
**Hours** | [**Schedule2Hours**](Schedule2Hours.md) |  | 
**Expiration** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**TimeZoneId** | **String** | The canonical TZ identifier the schedule will run in (ex. America/New_York).  If no timezone is specified, the org&#39;s default timezone is used. | [optional] 

## Examples

- Prepare the resource
```powershell
$Schedule2 = Initialize-PSSailpoint.V2024Schedule2  -Type null `
 -Months null `
 -Days null `
 -Hours null `
 -Expiration 2018-06-25T20:22:28.104Z `
 -TimeZoneId America/Chicago
```

- Convert the resource to JSON
```powershell
$Schedule2 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

