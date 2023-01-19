# Schedule1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**ScheduleType**](ScheduleType.md) |  | 
**Months** | [**Selector**](Selector.md) |  | [optional] 
**Days** | [**Selector**](Selector.md) |  | [optional] 
**Hours** | [**Selector**](Selector.md) |  | 
**Expiration** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**TimeZoneId** | **String** | The ID of the time zone for the schedule.  | [optional] 

## Examples

- Prepare the resource
```powershell
$Schedule1 = Initialize-PSSailpointBetaSchedule1  -Type null `
 -Months null `
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

