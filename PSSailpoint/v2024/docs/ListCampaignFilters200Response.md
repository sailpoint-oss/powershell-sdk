# ListCampaignFilters200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**CampaignFilterDetails[]**](CampaignFilterDetails.md) | List of campaign filters. | [optional] 
**Count** | **Int32** | Number of filters returned. | [optional] 

## Examples

- Prepare the resource
```powershell
$ListCampaignFilters200Response = Initialize-PSSailpoint.V2024ListCampaignFilters200Response  -Items null `
 -Count 2
```

- Convert the resource to JSON
```powershell
$ListCampaignFilters200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

