# CancelledRequestDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | Comment made by the owner when cancelling the associated request. | [optional] 
**Owner** | [**BaseReferenceDto1**](BaseReferenceDto1.md) |  | [optional] 
**Modified** | **System.DateTime** | Date comment was added by the owner when cancelling the associated request | [optional] 

## Examples

- Prepare the resource
```powershell
$CancelledRequestDetails = Initialize-PSSailpointBetaCancelledRequestDetails  -Comment Nisl quis ipsum quam quisque condimentum nunc ut dolor nunc. `
 -Owner null `
 -Modified 2019-12-20T09:17:12.192Z
```

- Convert the resource to JSON
```powershell
$CancelledRequestDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

