# License
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LicenseId** | **String** | Name of the license | [optional] 
**LegacyFeatureName** | **String** | Legacy name of the license | [optional] 

## Examples

- Prepare the resource
```powershell
$License = Initialize-Tm.V2024License  -LicenseId idn:access-request `
 -LegacyFeatureName ACCESS_REQUEST
```

- Convert the resource to JSON
```powershell
$License | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

