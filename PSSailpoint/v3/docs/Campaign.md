# Campaign
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the campaign. | 
**Name** | **String** | The name of the campaign. | 
**Type** | **String** | The type of object that is being referenced. | 
**CampaignType** | **String** | The type of the campaign. | 
**Description** | **String** | The description of the campaign set by the admin who created it. | 

## Examples

- Prepare the resource
```powershell
$Campaign = Initialize-PSSailpointCampaign  -Id ef38f94347e94562b5bb8424a56397d8 `
 -Name Campaign Name `
 -Type CAMPAIGN `
 -CampaignType MANAGER `
 -Description A description of the campaign
```

- Convert the resource to JSON
```powershell
$Campaign | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

