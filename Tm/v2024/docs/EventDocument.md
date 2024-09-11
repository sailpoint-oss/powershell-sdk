# EventDocument
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | 
**Type** | [**DocumentType**](DocumentType.md) |  | 
**Created** | **System.DateTime** | ISO-8601 date-time referring to the time when the object was created. | [optional] 
**Synced** | **String** | ISO-8601 date-time referring to the date-time when object was queued to be synced into search database for use in the search API.   This date-time changes anytime there is an update to the object, which triggers a synchronization event being sent to the search database.  There may be some delay between the &#x60;synced&#x60; time and the time when the updated data is actually available in the search API.  | [optional] 
**Action** | **String** | Name of the event as it&#39;s displayed in audit reports. | [optional] 
**Type** | **String** | Event type. Refer to [Event Types](https://documentation.sailpoint.com/saas/help/search/index.html#event-types) for a list of event types and their meanings. | [optional] 
**Actor** | **String** | Name of the actor that generated the event. | [optional] 
**Target** | **String** | Name of the target, or recipient, of the event. | [optional] 
**Stack** | **String** | The event&#39;s stack. | [optional] 
**TrackingNumber** | **String** | ID of the group of events. | [optional] 
**IpAddress** | **String** | Target system&#39;s IP address. | [optional] 
**Details** | **String** | ID of event&#39;s details. | [optional] 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | Attributes involved in the event. | [optional] 
**Objects** | **String[]** | Objects the event is happening to. | [optional] 
**Operation** | **String** | Operation, or action, performed during the event. | [optional] 
**Status** | **String** | Event status. Refer to [Event Statuses](https://documentation.sailpoint.com/saas/help/search/index.html#event-statuses) for a list of event statuses and their meanings. | [optional] 
**TechnicalName** | **String** | Event&#39;s normalized name. This normalized name always follows the pattern of &#39;objects_operation_status&#39;. | [optional] 

## Examples

- Prepare the resource
```powershell
$EventDocument = Initialize-Tm.V2024EventDocument  -Id 2c91808375d8e80a0175e1f88a575222 `
 -Name john.doe `
 -Type null `
 -Created 2018-06-25T20:22:28.104Z `
 -Synced null `
 -Action update `
 -Type SYSTEM_CONFIG `
 -Actor System `
 -Target Carol.Adams `
 -Stack tpe `
 -TrackingNumber 63f891e0735f4cc8bf1968144a1e7440 `
 -IpAddress 52.52.97.85 `
 -Details 73b65dfbed1842548c207432a18c84b0 `
 -Attributes {pod&#x3D;stg03-useast1, org&#x3D;acme, sourceName&#x3D;SailPoint} `
 -Objects null `
 -Operation REQUEST `
 -Status PASSED `
 -TechnicalName AUTHENTICATION_REQUEST_PASSED
```

- Convert the resource to JSON
```powershell
$EventDocument | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

