# TemplateSlackCustomFields
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestType** | **String** |  | [optional] 
**ContainsDeny** | **String** |  | [optional] 
**CampaignId** | **String** |  | [optional] 
**CampaignStatus** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TemplateSlackCustomFields = Initialize-PSSailpointBetaTemplateSlackCustomFields  -RequestType null `
 -ContainsDeny null `
 -CampaignId null `
 -CampaignStatus null
```

- Convert the resource to JSON
```powershell
$TemplateSlackCustomFields | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

