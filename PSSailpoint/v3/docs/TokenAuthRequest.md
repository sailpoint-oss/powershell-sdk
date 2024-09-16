# TokenAuthRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Token** | **String** | Token value | 
**UserAlias** | **String** | User alias from table spt_identity field named &#39;name&#39; | 
**DeliveryType** | **String** | Token delivery type | 

## Examples

- Prepare the resource
```powershell
$TokenAuthRequest = Initialize-PSSailpoint.V3TokenAuthRequest  -Token 12345 `
 -UserAlias will.albin `
 -DeliveryType EMAIL_WORK
```

- Convert the resource to JSON
```powershell
$TokenAuthRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

