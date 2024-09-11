# FullcampaignAllOfRoleCompositionCampaignInfoRemediatorRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Legal Remediator Type | 
**Id** | **String** | The ID of the remediator. | 
**Name** | **String** | The name of the remediator. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$FullcampaignAllOfRoleCompositionCampaignInfoRemediatorRef = Initialize-Tm.BetaFullcampaignAllOfRoleCompositionCampaignInfoRemediatorRef  -Type IDENTITY `
 -Id 2c90ad2a70ace7d50170acf22ca90010 `
 -Name Role Admin
```

- Convert the resource to JSON
```powershell
$FullcampaignAllOfRoleCompositionCampaignInfoRemediatorRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

