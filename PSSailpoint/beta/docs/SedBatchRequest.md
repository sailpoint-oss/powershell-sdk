# SedBatchRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Entitlements** | **String[]** | list of entitlement ids | [optional] 

## Examples

- Prepare the resource
```powershell
$SedBatchRequest = Initialize-PSSailpoint.BetaSedBatchRequest  -Entitlements null
```

- Convert the resource to JSON
```powershell
$SedBatchRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

