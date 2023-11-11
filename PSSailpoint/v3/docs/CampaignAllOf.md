# CampaignAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Created** | **System.DateTime** | Created time of the campaign | [optional] [readonly] 
**Modified** | **System.DateTime** | Modified time of the campaign | [optional] [readonly] 
**CorrelatedStatus** | [**SystemCollectionsHashtable**](.md) | The correlatedStatus of the campaign. Only SOURCE_OWNER campaigns can be Uncorrelated. An Uncorrelated certification campaign only includes Uncorrelated identities (An identity is uncorrelated if it has no accounts on an authoritative source). | [optional] 
**VarFilter** | [**CampaignAllOfFilter**](CampaignAllOfFilter.md) |  | [optional] 
**SunsetCommentsRequired** | **Boolean** | Determines if comments on sunset date changes are required. | [optional] [default to $true]
**SourceOwnerCampaignInfo** | [**CampaignAllOfSourceOwnerCampaignInfo**](CampaignAllOfSourceOwnerCampaignInfo.md) |  | [optional] 
**SearchCampaignInfo** | [**CampaignAllOfSearchCampaignInfo**](CampaignAllOfSearchCampaignInfo.md) |  | [optional] 
**RoleCompositionCampaignInfo** | [**CampaignAllOfRoleCompositionCampaignInfo**](CampaignAllOfRoleCompositionCampaignInfo.md) |  | [optional] 
**Alerts** | [**CampaignAlert[]**](CampaignAlert.md) | A list of errors and warnings that have accumulated. | [optional] [readonly] 
**TotalCertifications** | **Int32** | The total number of certifications in this campaign. | [optional] [readonly] 
**CompletedCertifications** | **Int32** | The number of completed certifications in this campaign. | [optional] [readonly] 
**SourcesWithOrphanEntitlements** | [**CampaignAllOfSourcesWithOrphanEntitlements[]**](CampaignAllOfSourcesWithOrphanEntitlements.md) | A list of sources in the campaign that contain \&quot;&quot;orphan entitlements\&quot;&quot; (entitlements without a corresponding Managed Attribute). An empty list indicates the campaign has no orphan entitlements. Null indicates there may be unknown orphan entitlements in the campaign (the campaign was created before this feature was implemented). | [optional] [readonly] 
**MandatoryCommentRequirement** | **String** | Determines whether comments are required for decisions during certification reviews. You can require comments for all decisions, revoke-only decisions, or no decisions. By default, comments are not required for decisions. | [optional] 

## Examples

- Prepare the resource
```powershell
$CampaignAllOf = Initialize-CampaignAllOf  -Created 2020-03-03T22:15:13.611Z `
 -Modified 2020-03-03T22:20:12.674Z `
 -CorrelatedStatus CORRELATED `
 -VarFilter null `
 -SunsetCommentsRequired true `
 -SourceOwnerCampaignInfo null `
 -SearchCampaignInfo null `
 -RoleCompositionCampaignInfo null `
 -Alerts null `
 -TotalCertifications 100 `
 -CompletedCertifications 10 `
 -SourcesWithOrphanEntitlements null `
 -MandatoryCommentRequirement NO_DECISIONS
```

- Convert the resource to JSON
```powershell
$CampaignAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

