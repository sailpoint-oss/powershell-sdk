# IdentitiesAccountsBulkRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityIds** | **String[]** | The ids of the identities for which enable/disable accounts. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentitiesAccountsBulkRequest = Initialize-BetaIdentitiesAccountsBulkRequest  -IdentityIds [2c91808384203c2d018437e631158308, 2c9180858082150f0180893dbaf553fe]
```

- Convert the resource to JSON
```powershell
$IdentitiesAccountsBulkRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

