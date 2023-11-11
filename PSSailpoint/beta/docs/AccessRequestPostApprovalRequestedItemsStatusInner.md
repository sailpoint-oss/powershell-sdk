# AccessRequestPostApprovalRequestedItemsStatusInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the access item being requested. | 
**Name** | **String** | The human friendly name of the access item. | 
**Description** | **String** | Detailed description of the access item. | [optional] 
**Type** | [**SystemCollectionsHashtable**](.md) | The type of access item. | 
**Operation** | [**SystemCollectionsHashtable**](.md) | The action to perform on the access item. | 
**Comment** | **String** | A comment from the identity requesting the access. | [optional] 
**ClientMetadata** | [**System.Collections.Hashtable**](AnyType.md) | Additional customer defined metadata about the access item. | [optional] 
**ApprovalInfo** | [**AccessRequestPostApprovalRequestedItemsStatusInnerApprovalInfoInner[]**](AccessRequestPostApprovalRequestedItemsStatusInnerApprovalInfoInner.md) | A list of one or more approvers for the access request. | 

## Examples

- Prepare the resource
```powershell
$AccessRequestPostApprovalRequestedItemsStatusInner = Initialize-BetaAccessRequestPostApprovalRequestedItemsStatusInner  -Id 2c91808b6ef1d43e016efba0ce470904 `
 -Name Engineering Access `
 -Description Access to engineering database `
 -Type ACCESS_PROFILE `
 -Operation Add `
 -Comment William needs this access to do his job. `
 -ClientMetadata {applicationName&#x3D;My application} `
 -ApprovalInfo null
```

- Convert the resource to JSON
```powershell
$AccessRequestPostApprovalRequestedItemsStatusInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

