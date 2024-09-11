# Children
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operator** | **String** |  | [optional] 
**Attribute** | **String** |  | [optional] 
**Value** | [**Value**](Value.md) |  | [optional] 
**Children** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Children = Initialize-Tm.BetaChildren  -Operator EQUALS `
 -Attribute country `
 -Value null `
 -Children null
```

- Convert the resource to JSON
```powershell
$Children | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

