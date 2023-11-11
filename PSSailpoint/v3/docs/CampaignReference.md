# CampaignReference
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the campaign. | 
**Name** | **String** | The name of the campaign. | 
**Type** | **String** | The type of object that is being referenced. | 
**CampaignType** | **String** | The type of the campaign. | 
**Description** | **String** | The description of the campaign set by the admin who created it. | 
**CorrelatedStatus** | [**SystemCollectionsHashtable**](.md) | The correlatedStatus of the campaign. Only SOURCE_OWNER campaigns can be Uncorrelated. An Uncorrelated certification campaign only includes Uncorrelated identities (An identity is uncorrelated if it has no accounts on an authoritative source). | 
**MandatoryCommentRequirement** | **String** | Determines whether comments are required for decisions during certification reviews. You can require comments for all decisions, revoke-only decisions, or no decisions. By default, comments are not required for decisions. | 

## Examples

- Prepare the resource
```powershell
$CampaignReference = Initialize-CampaignReference  -Id ef38f94347e94562b5bb8424a56397d8 `
 -Name Campaign Name `
 -Type CAMPAIGN `
 -CampaignType MANAGER `
 -Description A description of the campaign `
 -CorrelatedStatus CORRELATED `
 -MandatoryCommentRequirement NO_DECISIONS
```

- Convert the resource to JSON
```powershell
$CampaignReference | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

