# AttributeRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The attribute name | [optional] 
**Op** | **String** | The operation to perform | [optional] 
**Value** | **String** | The value of the attribute | [optional] 

## Examples

- Prepare the resource
```powershell
$AttributeRequest = Initialize-AttributeRequest  -Name groups `
 -Op Add `
 -Value 3203537556531076
```

- Convert the resource to JSON
```powershell
$AttributeRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

