# CampaignTemplate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Id of the campaign template | [optional] 
**Name** | **String** | This template&#39;s name. Has no bearing on generated campaigns&#39; names. | 
**Description** | **String** | This template&#39;s description. Has no bearing on generated campaigns&#39; descriptions. | 
**Created** | **System.DateTime** | Creation date of Campaign Template | [readonly] 
**Modified** | **System.DateTime** | Modification date of Campaign Template | [readonly] 
**Scheduled** | **Boolean** | Indicates if this campaign template has been scheduled. | [optional] [readonly] [default to $false]
**OwnerRef** | [**CampaignTemplateOwnerRef**](CampaignTemplateOwnerRef.md) |  | [optional] 
**DeadlineDuration** | **String** | The time period during which the campaign should be completed, formatted as an ISO-8601 Duration. When this template generates a campaign, the campaign&#39;s deadline will be the current date plus this duration. For example, if generation occurred on 2020-01-01 and this field was &quot;&quot;P2W&quot;&quot; (two weeks), the resulting campaign&#39;s deadline would be 2020-01-15 (the current date plus 14 days). | [optional] 
**Campaign** | [**Campaign**](.md) | This will hold campaign related information like name, description etc. | 

## Examples

- Prepare the resource
```powershell
$CampaignTemplate = Initialize-CampaignTemplate  -Id 2c9079b270a266a60170a277bb960008 `
 -Name Manager Campaign Template `
 -Description Template for the annual manager campaign. `
 -Created 2020-03-05T22:44:00.364Z `
 -Modified 2020-03-05T22:52:09.969Z `
 -Scheduled false `
 -OwnerRef null `
 -DeadlineDuration P2W `
 -Campaign null
```

- Convert the resource to JSON
```powershell
$CampaignTemplate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

