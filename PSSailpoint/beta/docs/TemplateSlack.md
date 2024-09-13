# TemplateSlack
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** |  | [optional] 
**Text** | **String** |  | [optional] 
**Blocks** | **String** |  | [optional] 
**Attachments** | **String** |  | [optional] 
**NotificationType** | **String** |  | [optional] 
**ApprovalId** | **String** |  | [optional] 
**RequestId** | **String** |  | [optional] 
**RequestedById** | **String** |  | [optional] 
**IsSubscription** | **Boolean** |  | [optional] 
**AutoApprovalData** | [**TemplateSlackAutoApprovalData**](TemplateSlackAutoApprovalData.md) |  | [optional] 
**CustomFields** | [**TemplateSlackCustomFields**](TemplateSlackCustomFields.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TemplateSlack = Initialize-PSSailpoint.BetaTemplateSlack  -Key null `
 -Text null `
 -Blocks null `
 -Attachments null `
 -NotificationType null `
 -ApprovalId null `
 -RequestId null `
 -RequestedById null `
 -IsSubscription null `
 -AutoApprovalData null `
 -CustomFields null
```

- Convert the resource to JSON
```powershell
$TemplateSlack | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

