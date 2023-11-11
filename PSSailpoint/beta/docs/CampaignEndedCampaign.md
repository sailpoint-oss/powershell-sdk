# CampaignEndedCampaign
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Unique ID for the campaign. | 
**Name** | **String** | The human friendly name of the campaign. | 
**Description** | **String** | Extended description of the campaign. | 
**Created** | **System.DateTime** | The date and time the campaign was created. | 
**Modified** | **System.DateTime** | The date and time the campaign was last modified. | [optional] 
**Deadline** | **System.DateTime** | The date and time the campaign is due. | 
**Type** | [**SystemCollectionsHashtable**](.md) | The type of campaign. | 
**CampaignOwner** | [**CampaignActivatedCampaignCampaignOwner**](CampaignActivatedCampaignCampaignOwner.md) |  | 
**Status** | [**SystemCollectionsHashtable**](.md) | The current status of the campaign. | 

## Examples

- Prepare the resource
```powershell
$CampaignEndedCampaign = Initialize-BetaCampaignEndedCampaign  -Id 2c91808576f886190176f88cac5a0010 `
 -Name Manager Access Campaign `
 -Description Audit access for all employees. `
 -Created 2021-02-16T03:04:45.815Z `
 -Modified 2021-03-16T03:06:45.815Z `
 -Deadline 2021-03-16T03:04:45.815Z `
 -Type MANAGER `
 -CampaignOwner null `
 -Status COMPLETED
```

- Convert the resource to JSON
```powershell
$CampaignEndedCampaign | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

