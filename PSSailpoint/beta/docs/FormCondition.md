# FormCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RuleOperator** | **String** | ConditionRuleLogicalOperatorType value. AND ConditionRuleLogicalOperatorTypeAnd OR ConditionRuleLogicalOperatorTypeOr | [optional] 
**Rules** | [**ConditionRule[]**](ConditionRule.md) | List of rules. | [optional] 
**Effects** | [**ConditionEffect[]**](ConditionEffect.md) | List of effects. | [optional] 

## Examples

- Prepare the resource
```powershell
$FormCondition = Initialize-BetaFormCondition  -RuleOperator AND `
 -Rules null `
 -Effects null
```

- Convert the resource to JSON
```powershell
$FormCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

