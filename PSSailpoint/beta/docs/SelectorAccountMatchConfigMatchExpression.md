# SelectorAccountMatchConfigMatchExpression
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MatchTerms** | [**MatchTerm[]**](MatchTerm.md) |  | [optional] 
**And** | **Boolean** | If it is AND operators for match terms | [optional] [default to $true]

## Examples

- Prepare the resource
```powershell
$SelectorAccountMatchConfigMatchExpression = Initialize-PSSailpoint.BetaSelectorAccountMatchConfigMatchExpression  -MatchTerms [{name&#x3D;, value&#x3D;, op&#x3D;null, container&#x3D;true, and&#x3D;false, children&#x3D;[{name&#x3D;businessCategory, value&#x3D;Service, op&#x3D;eq, container&#x3D;false, and&#x3D;false, children&#x3D;null}]}] `
 -And true
```

- Convert the resource to JSON
```powershell
$SelectorAccountMatchConfigMatchExpression | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

