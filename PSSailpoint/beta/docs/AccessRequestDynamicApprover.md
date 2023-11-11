# AccessRequestDynamicApprover
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessRequestId** | **String** | The unique ID of the access request object. Can be used with the [access request status endpoint](https://developer.sailpoint.com/idn/api/beta/list-access-request-status) to get the status of the request.  | 
**RequestedFor** | [**AccessRequestDynamicApproverRequestedFor**](AccessRequestDynamicApproverRequestedFor.md) |  | 
**RequestedItems** | [**AccessRequestDynamicApproverRequestedItemsInner[]**](AccessRequestDynamicApproverRequestedItemsInner.md) | The access items that are being requested. | 
**RequestedBy** | [**AccessRequestDynamicApproverRequestedBy**](AccessRequestDynamicApproverRequestedBy.md) |  | 

## Examples

- Prepare the resource
```powershell
$AccessRequestDynamicApprover = Initialize-BetaAccessRequestDynamicApprover  -AccessRequestId 4b4d982dddff4267ab12f0f1e72b5a6d `
 -RequestedFor null `
 -RequestedItems null `
 -RequestedBy null
```

- Convert the resource to JSON
```powershell
$AccessRequestDynamicApprover | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

