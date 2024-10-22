# CampaignAllOfMachineAccountCampaignInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceIds** | **String[]** | The list of sources to be included in the campaign. | [optional] 
**ReviewerType** | **String** | The reviewer&#39;s type. | [optional] 

## Examples

- Prepare the resource
```powershell
$CampaignAllOfMachineAccountCampaignInfo = Initialize-PSSailpoint.V2024CampaignAllOfMachineAccountCampaignInfo  -SourceIds [0fbe863c063c4c88a35fd7f17e8a3df5] `
 -ReviewerType ACCOUNT_OWNER
```

- Convert the resource to JSON
```powershell
$CampaignAllOfMachineAccountCampaignInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

