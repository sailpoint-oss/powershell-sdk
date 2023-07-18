# FormCondition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Effects** | [**ConditionEffect[]**](ConditionEffect.md) | Effects is a list of effects | [optional] 
**RuleOperator** | **String** | RuleOperator is a ConditionRuleLogicalOperatorType value AND ConditionRuleLogicalOperatorTypeAnd OR ConditionRuleLogicalOperatorTypeOr | [optional] 
**Rules** | [**ConditionRule[]**](ConditionRule.md) | Rules is a list of rules | [optional] 

## Examples

- Prepare the resource
```powershell
$FormCondition = Initialize-PSSailpointBetaFormCondition  -Effects null `
 -RuleOperator AND `
 -Rules null
```

- Convert the resource to JSON
```powershell
$FormCondition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

