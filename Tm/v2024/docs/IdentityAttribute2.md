# IdentityAttribute2
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | The attribute key | [optional] 
**Name** | **String** | Human-readable display name of the attribute | [optional] 
**Value** | **String** | The attribute value | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAttribute2 = Initialize-Tm.V2024IdentityAttribute2  -Key country `
 -Name Country `
 -Value US
```

- Convert the resource to JSON
```powershell
$IdentityAttribute2 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

