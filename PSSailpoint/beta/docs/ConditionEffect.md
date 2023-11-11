# ConditionEffect
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EffectType** | **String** | Type of effect to perform when the conditions are evaluated for this logic block. HIDE ConditionEffectTypeHide  Disables validations. SHOW ConditionEffectTypeShow  Enables validations. DISABLE ConditionEffectTypeDisable  Disables validations. ENABLE ConditionEffectTypeEnable  Enables validations. REQUIRE ConditionEffectTypeRequire OPTIONAL ConditionEffectTypeOptional SUBMIT_MESSAGE ConditionEffectTypeSubmitMessage SUBMIT_NOTIFICATION ConditionEffectTypeSubmitNotification SET_DEFAULT_VALUE ConditionEffectTypeSetDefaultValue  This value is ignored on purpose. | [optional] 
**Config** | [**ConditionEffectConfig**](ConditionEffectConfig.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConditionEffect = Initialize-BetaConditionEffect  -EffectType HIDE `
 -Config null
```

- Convert the resource to JSON
```powershell
$ConditionEffect | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

