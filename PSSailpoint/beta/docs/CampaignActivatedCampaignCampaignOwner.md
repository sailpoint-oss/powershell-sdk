# CampaignActivatedCampaignCampaignOwner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the identity. | 
**DisplayName** | **String** | The human friendly name of the identity. | 
**Email** | **String** | The primary email address of the identity. | 

## Examples

- Prepare the resource
```powershell
$CampaignActivatedCampaignCampaignOwner = Initialize-PSSailpoint.BetaCampaignActivatedCampaignCampaignOwner  -Id 37f080867702c1910177031320c40n27 `
 -DisplayName John Snow `
 -Email john.snow@example.com
```

- Convert the resource to JSON
```powershell
$CampaignActivatedCampaignCampaignOwner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

