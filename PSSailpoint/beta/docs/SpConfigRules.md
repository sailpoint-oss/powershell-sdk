# SpConfigRules
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TakeFromTargetRules** | [**SpConfigRule[]**](SpConfigRule.md) |  | [optional] 
**DefaultRules** | [**SpConfigRule[]**](SpConfigRule.md) |  | [optional] 
**Editable** | **Boolean** | Whether this object can be edited | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$SpConfigRules = Initialize-PSSailpoint.BetaSpConfigRules  -TakeFromTargetRules null `
 -DefaultRules null `
 -Editable true
```

- Convert the resource to JSON
```powershell
$SpConfigRules | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

