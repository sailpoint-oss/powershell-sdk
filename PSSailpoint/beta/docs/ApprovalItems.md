# ApprovalItems
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The approval item&#39;s ID | [optional] 
**Account** | **String** | The account referenced by the approval item | [optional] 
**Application** | **String** | The name of the application/source | [optional] 
**Name** | **String** | The attribute&#39;s name | [optional] 
**Operation** | **String** | The attribute&#39;s operation | [optional] 
**Value** | **String** | The attribute&#39;s value | [optional] 
**State** | [**WorkItemState**](WorkItemState.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalItems = Initialize-BetaApprovalItems  -Id 2c9180835d2e5168015d32f890ca1581 `
 -Account john.smith `
 -Application Active Directory `
 -Name emailAddress `
 -Operation update `
 -Value a@b.com `
 -State null
```

- Convert the resource to JSON
```powershell
$ApprovalItems | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

