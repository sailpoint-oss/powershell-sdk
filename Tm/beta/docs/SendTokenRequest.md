# SendTokenRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserAlias** | **String** | User alias from table spt_identity field named &#39;name&#39; | 
**DeliveryType** | **String** | Token delivery type | 

## Examples

- Prepare the resource
```powershell
$SendTokenRequest = Initialize-Tm.BetaSendTokenRequest  -UserAlias will.albin `
 -DeliveryType EMAIL_WORK
```

- Convert the resource to JSON
```powershell
$SendTokenRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

