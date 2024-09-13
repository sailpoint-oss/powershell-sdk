# ActivateCampaignOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimeZone** | **String** | The timezone must be in a valid ISO 8601 format. Timezones in ISO 8601 are represented as UTC (represented as &#39;Z&#39;) or as an offset from UTC. The offset format can be +/-hh:mm, +/-hhmm, or +/-hh. | [optional] [default to "Z"]

## Examples

- Prepare the resource
```powershell
$ActivateCampaignOptions = Initialize-PSSailpoint.V2024ActivateCampaignOptions  -TimeZone -05:00
```

- Convert the resource to JSON
```powershell
$ActivateCampaignOptions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

