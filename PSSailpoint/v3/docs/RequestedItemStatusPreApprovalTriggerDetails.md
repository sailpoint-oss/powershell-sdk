# RequestedItemStatusPreApprovalTriggerDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | Comment left for the pre-approval decision | [optional] 
**Reviewer** | **String** | The reviewer of the pre-approval decision | [optional] 
**Decision** | **String** | The decision of the pre-approval trigger | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestedItemStatusPreApprovalTriggerDetails = Initialize-PSSailpointRequestedItemStatusPreApprovalTriggerDetails  -Comment Access is Approved `
 -Reviewer John Doe `
 -Decision APPROVED
```

- Convert the resource to JSON
```powershell
$RequestedItemStatusPreApprovalTriggerDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

