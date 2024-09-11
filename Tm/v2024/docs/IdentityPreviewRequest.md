# IdentityPreviewRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityId** | **String** | The Identity id | [optional] 
**IdentityAttributeConfig** | [**IdentityAttributeConfig[]**](IdentityAttributeConfig.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityPreviewRequest = Initialize-Tm.V2024IdentityPreviewRequest  -IdentityId null `
 -IdentityAttributeConfig null
```

- Convert the resource to JSON
```powershell
$IdentityPreviewRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

