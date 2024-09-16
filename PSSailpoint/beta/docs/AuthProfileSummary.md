# AuthProfileSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Tenant** | **String** | Tenant name. | [optional] 
**Id** | **String** | Identity ID. | [optional] 

## Examples

- Prepare the resource
```powershell
$AuthProfileSummary = Initialize-PSSailpoint.BetaAuthProfileSummary  -Tenant test-tenant `
 -Id 2c91808458ae7a4f0158b1bbf8af0628
```

- Convert the resource to JSON
```powershell
$AuthProfileSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

