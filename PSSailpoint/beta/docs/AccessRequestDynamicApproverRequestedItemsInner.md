# AccessRequestDynamicApproverRequestedItemsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the access item. | 
**Name** | **String** | Human friendly name of the access item. | 
**Description** | **String** | Extended description of the access item. | [optional] 
**Type** | [**SystemCollectionsHashtable**](.md) | The type of access item being requested. | 
**Operation** | [**SystemCollectionsHashtable**](.md) | Grant or revoke the access item | 
**Comment** | **String** | A comment from the requestor on why the access is needed. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequestDynamicApproverRequestedItemsInner = Initialize-BetaAccessRequestDynamicApproverRequestedItemsInner  -Id 2c91808b6ef1d43e016efba0ce470904 `
 -Name Engineering Access `
 -Description Engineering Access `
 -Type ACCESS_PROFILE `
 -Operation Add `
 -Comment William needs this access for his day to day job activities.
```

- Convert the resource to JSON
```powershell
$AccessRequestDynamicApproverRequestedItemsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

