# CampaignGeneratedCampaign
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the campaign. | 
**Name** | **String** | Human friendly name of the campaign. | 
**Description** | **String** | Extended description of the campaign. | 
**Created** | **System.DateTime** | The date and time the campaign was created. | 
**Modified** | **String** | The date and time the campaign was last modified. | [optional] 
**Deadline** | **String** | The date and time when the campaign must be finished by. | [optional] 
**Type** | [**SystemCollectionsHashtable**](.md) | The type of campaign that was generated. | 
**CampaignOwner** | [**CampaignGeneratedCampaignCampaignOwner**](CampaignGeneratedCampaignCampaignOwner.md) |  | 
**Status** | [**SystemCollectionsHashtable**](.md) | The current status of the campaign. | 

## Examples

- Prepare the resource
```powershell
$CampaignGeneratedCampaign = Initialize-BetaCampaignGeneratedCampaign  -Id 2c91808576f886190176f88cac5a0010 `
 -Name Manager Access Campaign `
 -Description Audit access for all employees. `
 -Created 2021-02-16T03:04:45.815Z `
 -Modified 2021-02-17T03:04:45.815Z `
 -Deadline 2021-02-18T03:04:45.815Z `
 -Type MANAGER `
 -CampaignOwner null `
 -Status STAGED
```

- Convert the resource to JSON
```powershell
$CampaignGeneratedCampaign | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

