# ManualWorkItemDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Forwarded** | **Boolean** | True if the request for this item was forwarded from one owner to another. | [optional] 
**OriginalOwner** | [**BaseReferenceDto**](BaseReferenceDto.md) |  | [optional] 
**CurrentOwner** | [**BaseReferenceDto**](BaseReferenceDto.md) |  | [optional] 
**Modified** | **System.DateTime** | Time at which item was modified. | [optional] 
**Status** | [**ManualWorkItemState**](ManualWorkItemState.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ManualWorkItemDetails = Initialize-PSSailpointManualWorkItemDetails  -Forwarded true `
 -OriginalOwner null `
 -CurrentOwner null `
 -Modified 2019-08-23T18:52:57.398Z `
 -Status null
```

- Convert the resource to JSON
```powershell
$ManualWorkItemDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

