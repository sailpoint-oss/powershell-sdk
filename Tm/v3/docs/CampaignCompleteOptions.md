# CampaignCompleteOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AutoCompleteAction** | **String** | Determines whether to auto-approve(APPROVE) or auto-revoke(REVOKE) upon campaign completion. | [optional] [default to "APPROVE"]

## Examples

- Prepare the resource
```powershell
$CampaignCompleteOptions = Initialize-Tm.V3CampaignCompleteOptions  -AutoCompleteAction REVOKE
```

- Convert the resource to JSON
```powershell
$CampaignCompleteOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

