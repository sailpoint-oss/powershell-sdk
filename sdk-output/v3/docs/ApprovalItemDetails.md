# ApprovalItemDetails
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the approval item | [optional] 
**Account** | **String** | The account referenced by the approval item | [optional] 
**Application** | **String** | The name the application/source | [optional] 
**AttributeName** | **String** | The name of the attribute | [optional] 
**AttributeOperation** | **String** | The operation of the attribute | [optional] 
**AttributeValue** | **String** | The value of the attribute | [optional] 
**State** | [**WorkItemState**](WorkItemState.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalItemDetails = Initialize-PSSailpointApprovalItemDetails  -Id 2c9180835d2e5168015d32f890ca1581 `
 -Account john.smith `
 -Application Active Directory `
 -AttributeName emailAddress `
 -AttributeOperation update `
 -AttributeValue a@b.com `
 -State null
```

- Convert the resource to JSON
```powershell
$ApprovalItemDetails | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

