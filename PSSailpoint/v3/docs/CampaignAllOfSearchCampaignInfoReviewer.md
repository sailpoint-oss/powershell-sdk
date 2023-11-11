# CampaignAllOfSearchCampaignInfoReviewer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The reviewer&#39;s DTO type. | [optional] 
**Id** | **String** | The reviewer&#39;s ID. | [optional] 
**Name** | **String** | The reviewer&#39;s name. | [optional] 

## Examples

- Prepare the resource
```powershell
$CampaignAllOfSearchCampaignInfoReviewer = Initialize-CampaignAllOfSearchCampaignInfoReviewer  -Type IDENTITY `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$CampaignAllOfSearchCampaignInfoReviewer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

