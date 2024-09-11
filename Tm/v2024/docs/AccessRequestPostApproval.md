# AccessRequestPostApproval
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessRequestId** | **String** | The unique ID of the access request. | 
**RequestedFor** | [**AccessItemRequestedForDto[]**](AccessItemRequestedForDto.md) | Identities access was requested for. | 
**RequestedItemsStatus** | [**AccessRequestPostApprovalRequestedItemsStatusInner[]**](AccessRequestPostApprovalRequestedItemsStatusInner.md) | Details on the outcome of each access item. | 
**RequestedBy** | [**AccessItemRequesterDto**](AccessItemRequesterDto.md) |  | 

## Examples

- Prepare the resource
```powershell
$AccessRequestPostApproval = Initialize-Tm.V2024AccessRequestPostApproval  -AccessRequestId 2c91808b6ef1d43e016efba0ce470904 `
 -RequestedFor null `
 -RequestedItemsStatus null `
 -RequestedBy null
```

- Convert the resource to JSON
```powershell
$AccessRequestPostApproval | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

