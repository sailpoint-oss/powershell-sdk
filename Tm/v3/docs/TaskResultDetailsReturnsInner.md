# TaskResultDetailsReturnsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayLabel** | **String** | Attribute description. | [optional] 
**AttributeName** | **String** | System or database attribute name. | [optional] 

## Examples

- Prepare the resource
```powershell
$TaskResultDetailsReturnsInner = Initialize-Tm.V3TaskResultDetailsReturnsInner  -DisplayLabel   `
 -AttributeName  
```

- Convert the resource to JSON
```powershell
$TaskResultDetailsReturnsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

