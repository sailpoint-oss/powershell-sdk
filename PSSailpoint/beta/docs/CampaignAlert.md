# CampaignAlert
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Level** | **String** | Denotes the level of the message | [optional] 
**Localizations** | [**ErrorMessageDto[]**](ErrorMessageDto.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CampaignAlert = Initialize-BetaCampaignAlert  -Level ERROR `
 -Localizations null
```

- Convert the resource to JSON
```powershell
$CampaignAlert | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

