# AttributeRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Attribute name. | [optional] 
**Op** | **String** | Operation to perform on attribute. | [optional] 
**Value** | **String** | Value of attribute. | [optional] 

## Examples

- Prepare the resource
```powershell
$AttributeRequest = Initialize-PSSailpoint.V2024AttributeRequest  -Name groups `
 -Op Add `
 -Value 3203537556531076
```

- Convert the resource to JSON
```powershell
$AttributeRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

