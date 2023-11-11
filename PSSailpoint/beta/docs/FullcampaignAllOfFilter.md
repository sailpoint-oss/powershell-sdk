# FullcampaignAllOfFilter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of whatever type of filter is being used. | [optional] 
**Type** | **String** | Type of the filter | [optional] 
**Name** | **String** | Name of the filter | [optional] 

## Examples

- Prepare the resource
```powershell
$FullcampaignAllOfFilter = Initialize-BetaFullcampaignAllOfFilter  -Id 0fbe863c063c4c88a35fd7f17e8a3df5 `
 -Type CAMPAIGN_FILTER `
 -Name Test Filter
```

- Convert the resource to JSON
```powershell
$FullcampaignAllOfFilter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

