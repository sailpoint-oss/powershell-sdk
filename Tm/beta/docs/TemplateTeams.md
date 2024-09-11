# TemplateTeams
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** |  | [optional] 
**Title** | **String** |  | [optional] 
**Text** | **String** |  | [optional] 
**MessageJSON** | **String** |  | [optional] 
**IsSubscription** | **Boolean** |  | [optional] 
**ApprovalId** | **String** |  | [optional] 
**RequestId** | **String** |  | [optional] 
**RequestedById** | **String** |  | [optional] 
**NotificationType** | **String** |  | [optional] 
**AutoApprovalData** | [**TemplateSlackAutoApprovalData**](TemplateSlackAutoApprovalData.md) |  | [optional] 
**CustomFields** | [**TemplateSlackCustomFields**](TemplateSlackCustomFields.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TemplateTeams = Initialize-Tm.BetaTemplateTeams  -Key null `
 -Title null `
 -Text null `
 -MessageJSON null `
 -IsSubscription null `
 -ApprovalId null `
 -RequestId null `
 -RequestedById null `
 -NotificationType null `
 -AutoApprovalData null `
 -CustomFields null
```

- Convert the resource to JSON
```powershell
$TemplateTeams | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

