# MatchTerm
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The attribute name | [optional] 
**Value** | **String** | The attribute value | [optional] 
**Op** | **String** | The operator between name and value | [optional] 
**Container** | **Boolean** | If it is a container or a real match term | [optional] [default to $false]
**And** | **Boolean** | If it is AND logical operator for the children match terms | [optional] [default to $false]
**Children** | [**System.Collections.Hashtable[]**](Map.md) | The children under this match term | [optional] 

## Examples

- Prepare the resource
```powershell
$MatchTerm = Initialize-PSSailpoint.V2024MatchTerm  -Name mail `
 -Value 1234 Albany Dr `
 -Op eq `
 -Container true `
 -And false `
 -Children [{name&#x3D;businessCategory, value&#x3D;Service, op&#x3D;eq, container&#x3D;false, and&#x3D;false, children&#x3D;null}]
```

- Convert the resource to JSON
```powershell
$MatchTerm | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

