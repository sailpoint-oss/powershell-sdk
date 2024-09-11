# AccessRequestPreApproval
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessRequestId** | **String** | The unique ID of the access request. | 
**RequestedFor** | [**AccessItemRequestedForDto[]**](AccessItemRequestedForDto.md) | Identities access was requested for. | 
**RequestedItems** | [**AccessRequestPreApprovalRequestedItemsInner[]**](AccessRequestPreApprovalRequestedItemsInner.md) | Details of the access items being requested. | 
**RequestedBy** | [**AccessItemRequesterDto**](AccessItemRequesterDto.md) |  | 

## Examples

- Prepare the resource
```powershell
$AccessRequestPreApproval = Initialize-Tm.V2024AccessRequestPreApproval  -AccessRequestId 2c91808b6ef1d43e016efba0ce470904 `
 -RequestedFor null `
 -RequestedItems null `
 -RequestedBy null
```

- Convert the resource to JSON
```powershell
$AccessRequestPreApproval | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

