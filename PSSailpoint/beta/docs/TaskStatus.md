# TaskStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | System-generated unique ID of the task this TaskStatus represents | 
**Type** | **String** | Type of task this TaskStatus represents | 
**UniqueName** | **String** | Name of the task this TaskStatus represents | 
**Description** | **String** | Description of the task this TaskStatus represents | 
**ParentName** | **String** | Name of the parent of the task this TaskStatus represents | 
**Launcher** | **String** | Service to execute the task this TaskStatus represents | 
**Created** | **System.DateTime** | Creation date of the task this TaskStatus represents | 
**Modified** | **System.DateTime** | Last modification date of the task this TaskStatus represents | 
**Launched** | **System.DateTime** | Launch date of the task this TaskStatus represents | 
**Completed** | **System.DateTime** | Completion date of the task this TaskStatus represents | 
**CompletionStatus** | **String** | Completion status of the task this TaskStatus represents | 
**Messages** | [**TaskStatusMessage[]**](TaskStatusMessage.md) | Messages associated with the task this TaskStatus represents | 
**Returns** | [**TaskReturnDetails[]**](TaskReturnDetails.md) | Return values from the task this TaskStatus represents | 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | Attributes of the task this TaskStatus represents | 
**Progress** | **String** | Current progress of the task this TaskStatus represents | 
**PercentComplete** | **Int32** | Current percentage completion of the task this TaskStatus represents | 

## Examples

- Prepare the resource
```powershell
$TaskStatus = Initialize-BetaTaskStatus  -Id id12345 `
 -Type QUARTZ `
 -UniqueName Big Task `
 -Description A Really Big Task `
 -ParentName Parent Task `
 -Launcher sweep `
 -Created 2020-07-11T21:23:15Z `
 -Modified 2020-07-11T21:23:15Z `
 -Launched 2020-07-11T21:23:15Z `
 -Completed 2020-07-11T21:23:15Z `
 -CompletionStatus Success `
 -Messages null `
 -Returns null `
 -Attributes {identityCount&#x3D;0} `
 -Progress Started `
 -PercentComplete 100
```

- Convert the resource to JSON
```powershell
$TaskStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

