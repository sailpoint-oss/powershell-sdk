# Approval1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comments** | [**ApprovalComment1[]**](ApprovalComment1.md) |  | [optional] 
**Created** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Modified** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Owner** | [**AccountSource**](AccountSource.md) |  | [optional] 
**Result** | **String** | The result of the approval | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Approval1 = Initialize-PSSailpointV2024Approval1  -Comments null `
 -Created 2018-06-25T20:22:28.104Z `
 -Modified 2018-06-25T20:22:28.104Z `
 -Owner null `
 -Result Finished `
 -Type null
```

- Convert the resource to JSON
```powershell
$Approval1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

