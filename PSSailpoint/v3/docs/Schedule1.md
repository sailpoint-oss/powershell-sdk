# Schedule1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**ScheduleType**](ScheduleType.md) |  | 
**Days** | [**Schedule1Days**](Schedule1Days.md) |  | [optional] 
**Hours** | [**Schedule1Hours**](Schedule1Hours.md) |  | 
**Expiration** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**TimeZoneId** | **String** | The GMT formatted timezone the schedule will run in (ex. GMT-06:00).  If no timezone is specified, the org&#39;s default timezone is used. | [optional] 

## Examples

- Prepare the resource
```powershell
$Schedule1 = Initialize-Schedule1  -Type null `
 -Days null `
 -Hours null `
 -Expiration 2018-06-25T20:22:28.104Z `
 -TimeZoneId GMT-06:00
```

- Convert the resource to JSON
```powershell
$Schedule1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

